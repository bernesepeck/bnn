export default ({ filter, action }) => {
  action('items.create', async ({ collection, payload, schema }) => {
    if (collection === 'cities') { // Assuming 'cities' is the name of your city collection
      const cityId = payload.id; // Get the newly created city ID
      await createRoleForCity(cityId, database, schema);
    }
  });
};


async function createRoleForCity(cityId, database) {
  // Define the role name and description
  const roleName = `City Manager - ${cityId}`;
  const roleDescription = `Manage data for city ${cityId}`;

  // Create the role in the `directus_roles` table
  console.log(`Creating role ${roleName}`)
  const role = await database('directus_roles').insert({
    name: roleName,
    description: roleDescription,
    icon: 'settings', // You can choose an appropriate icon
  }).returning('*');

  // if (role.length > 0) {
  //   const roleId = role[0].id;
  //   // Assuming you have a standardized set of permissions you want to assign
  //   // You would loop through your collections here and add permissions for each
  //   const collections = ['collection1', 'collection2']; // List your collections related to a city
  //   for (const collectionName of collections) {
  //     await database('directus_permissions').insert({
  //       role: roleId,
  //       collection: collectionName,
  //       action: 'read', // Repeat for 'create', 'update', 'delete' as needed
  //       fields: '*', // Adjust based on specific fields you want the role to access
  //       filter: JSON.stringify({ city: cityId }), // Ensure this matches your schema's way of relating records to cities
  //     });
  //   }
  // }
}


