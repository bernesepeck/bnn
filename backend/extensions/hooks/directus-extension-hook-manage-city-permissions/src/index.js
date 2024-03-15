export default ({ action }) => {

  action('items.create', async ({ key: newCityId, collection, payload }, { database }) => {
    if (collection === 'city') {
      // Fetch permissions from the reference role
      const referencePermissions = await fetchRolePermissions("Basel City Admin", database);
      const [role] = await createRoleForCity(payload, database, newCityId);
      const rolePermissions = generateRolePermissions(referencePermissions, role.id, newCityId);
      await insertRolePermissions(rolePermissions, database);
    }
  });

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
 * Creates a new role for managing a specific city in the database.
 * 
 * @param {object} payload - The data payload containing the city's information.
 * @param {object} database - The database connection to use for queries.
 * @param {string} newCityId - The unique identifier for the new city.
 * @returns {Promise<object>} The newly created role, including its name and description.
 */
async function createRoleForCity(payload, database, newCityId) {
  const cityName = payload.translations.create[0].name
  const roleName = `City Manager - ${payload.translations.create[0].name}`;
  const roleDescription = `Manage data for city ${cityName} (City ID: ${newCityId})`;

  return await database('directus_roles').insert({
    id: simpleUUID(),
    name: roleName,
    description: roleDescription,
    icon: 'supervised_user_circle',
    enforce_tfa: false,
    admin_access: false,
    app_access: true,
  }).returning('*');
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
      console.log(obj[key])
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