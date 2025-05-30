export default ({ action }) => {

  // When a city is created, create a role with permissions copied from the City Template Admin
  action('items.create', async ({ key: newCityId, collection, payload }, { database }) => {
    if (collection === 'city') {
      // Fetch permissions from the reference role
      const referencePermissions = await fetchRolePermissions("City Template Admin", database);
      const updatedCityName = payload.translations.create[0].name
      const role = await getOrCreateRoleForCity(updatedCityName, database, newCityId);
      const rolePermissions = generateRolePermissions(referencePermissions, role.id, newCityId);
      await insertRolePermissions(rolePermissions, database);
    }
  });

  // When a city is deleted, delete the role with its id in its description
  action('items.delete', async ({ collection, keys }, { database }) => {
    if (collection === 'city') {
      for (const cityId of keys) {

        // Delete all city roles for this city. With "City ID: <CITY_ID>" in desciption.
        const rolesToDelete = await database('directus_roles')
          .where('description', 'like', `%City ID: ${cityId}%`);
        
        for (const role of rolesToDelete) {
          await database('directus_permissions')
            .where({ role: role.id })
            .delete();
    
          await database('directus_roles')
            .where({ id: role.id })
            .delete();
        }
      }
    }
  });

  // When the role 'City Template Admin' is updated, create or update the city role for each city
  action('roles.update', async ({ collection, payload, keys }, { database }) => {
    const updatedRole = await database('directus_roles')
      .where({ id: keys[0] })
      .first();

    if (updatedRole && updatedRole.name === 'City Template Admin') {
      const referencePermissions = await fetchRolePermissions('City Template Admin', database);
      const cities = await database('city').select('*');
      
      for (const city of cities) {
        const cityName = city.domainname.charAt(0).toUpperCase() + city.domainname.slice(1);
        const role = await getOrCreateRoleForCity(cityName, database, city.id);
        const rolePermissions = generateRolePermissions(referencePermissions, role.id, city.id);
        // Delete existing permissions for this role
        await database('directus_permissions')
          .where({ role: role.id })
          .delete();
        // Insert updated permissions
        await insertRolePermissions(rolePermissions, database);
      }
    }
  });
};

/**
 * Generates a unique identifier based on the current date and random numbers.
 * 
 * @returns {string} A unique UUID string.
 */
function simpleUUID() {
  let dt = new Date().getTime();
  const uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    const r = (dt + Math.random()*16)%16 | 0;
    dt = Math.floor(dt/16);
    return (c == 'x' ? r : (r&0x3|0x8)).toString(16);
  });
  return uuid;
}

/**
 * Gets or updates a role for a specific city in the database.
 * If a role for the city already exists, return it.
 * Otherwise, it creates a new role.
 *
 * @param {object} payload - The data payload containing the city's information.
 * @param {object} database - The database connection to use for queries.
 * @param {string} newCityId - The unique identifier for the new city.
 * @returns {Promise<object>} The newly created role, including its name and description.
 */
async function getOrCreateRoleForCity(cityName, database, cityId) {
  const roleName = `City Manager - ${cityName}`;
  const roleDescription = `Manage data for city ${cityName} (City ID: ${cityId})`;

  let role = await database('directus_roles')
    .where('description', 'like', `%City ID: ${cityId}%`)
    .first();
  
  if (role) {
    return role
  } else {
    // Create new role if it doesn't exist
    const insertedRoles = await database('directus_roles').insert({
      id: simpleUUID(),
      name: roleName,
      description: roleDescription,
      icon: 'supervised_user_circle',
      enforce_tfa: false,
      admin_access: false,
      app_access: true,
    }).returning('*');

    return insertedRoles[0];
  }
}

/**
 * Fetches the permissions associated with a given role. 
 * 
 * @param {string} roleName - The name of the role to fetch permissions for.
 * @param {object} database - The database connection to use for queries.
 * @returns {Promise<Array>} An array of permissions associated with the role.
 */
async function fetchRolePermissions(roleName, database) {
  const role = await database('directus_roles')
    .where({ name: roleName })
    .first();

  // Fetch permissions associated with the role ID
  return await database('directus_permissions')
    .where({ role: role.id });
}

/**
 * Replace any city IDs in the permissions object with the new one.
 * 
 * @param {object} obj - The object containing potential placeholders to replace.
 * @param {string} newCityId - The new city ID to replace the placeholder with.
 */
function replaceCityId(obj, newCityId) {
  for (const key in obj) {
    if (typeof obj[key] === 'object') {
      replaceCityId(obj[key], newCityId);
    } else if (key === '_eq' && isInt(obj[key])) {
      obj[key] = newCityId;
    }
  }
}

function generateRolePermissions(permissions, newRoleId, newCityId) {
  return permissions.map(permission => {
    const updatedPermission = { ...permission, role: newRoleId };
    delete updatedPermission.id; // Remove the old ID
    if (updatedPermission.permissions) replaceCityId(updatedPermission.permissions, newCityId);
    if (updatedPermission.validation) replaceCityId(updatedPermission.validation, newCityId);
    return updatedPermission;
  });
}

function isInt(value) {
  return !isNaN(value) && 
         parseInt(Number(value)) == value && 
         !isNaN(parseInt(value, 10));
}

async function insertRolePermissions(permissions, database) {
  await database('directus_permissions').insert(permissions);
}