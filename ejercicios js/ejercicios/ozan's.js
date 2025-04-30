const set = new Set();
const object = { color: 'lime green' };
const functionallyIdenticalObject = { color: 'lime green' };

set.add(object);
set.add('wow');
set.add(77);
console.log(set.has(object));

console.log(set)

console.log(set.size);
//=> 3

set.add(functionallyIdenticalObject); // added because functionallyIdenticalObject is not strictly equal to object
console.log(set.size);
//=> 4

set.add(77); // not added because 77 is strictly equal to 77
console.log(set.size);

// const array = [1, 5, 4, 1];
// let set = new Set(array); // the set's values become [1, 5, 4]

// console.log(set.size);
// //=> 3

function removeDuplicates(playlist) {
  return new Set(playlist);
}

function hasTrack(playlist, track) {
 let set = new Set(playlist);
 return set.has(track)
}

function addTrack(playlist, track) {
  let set = new Set(playlist);
  return [ ...(set.add(track))];
}

function deleteTrack(playlist, track) {
  let set = new Set(playlist);
  set.delete(track)
  return [...set]
}



function listArtists(playlist) {
  const artists = playlist.map(track => {
    return track.split(' - ')[1]; // Obtenemos solo el nombre del artista
  });

  const uniqueArtists = new Set(artists); // Quitamos duplicados con Set

  return [...uniqueArtists]; // Convertimos de nuevo a array
}


const playlist = [
  'Court and Spark - Joni Mitchell',
  'Big Yellow Taxi - Joni Mitchell',
  'Court and Spark - Joni Mitchell',
  'The Fashion Show - Grace Jones',
  'Dr. Funkenstein - Parliament'
];

console.log(removeDuplicates(playlist));
console.log(hasTrack(playlist, 'Dr. Funkenstein - Parliament'));
console.log(addTrack(playlist, 'Selma - Bijelo Dugme'));
console.log(deleteTrack(playlist, 'Court and Spark - Joni Mitchell'));