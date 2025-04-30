let map  = new Map();
map.set('name', 'pierre');
map.set('age', 20);

map.delete('name')
console.log(map.size);


const contacts = new Map();
contacts.set("Jessie", {
  telefono: "213-555-1234",
  direccion: "123 N 1st Ave",
});
contacts.has("Jessie"); // true
contacts.get("Hilary"); // undefined
contacts.set("Hilary", { telefono: "617-555-4321", direccion: "321 S 2nd St" });
console.log(contacts.get("Jessie")); // {teléfono: "213-555-1234", dirección: "123 N 1st Ave"}
// contacts.delete("Raymond"); // false
// contacts.delete("Jessie"); // true
console.log(contacts.size); // 1

console.log(contacts.keys)
console.log(contacts.set('Jessie'))

console.log(Array.from(contacts));