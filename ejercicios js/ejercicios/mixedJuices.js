// const juiceTimes = {
//   'Pure Strawberry Joy': 0.5,
//   'Energizer': 1.5,
//   'Green Garden': 1.5,
//   'Tropical Island': 3,
//   'All or Nothing': 5,
// };

// function timeToMixJuice(juice) {
//   return juiceTimes[juice] ?? 2.5;
// }


function timeToMixJuice(juice) {
  switch (juice) {
    case 'Pure Strawberry Joy':
      return 0.5;
    case 'Energizer':
    case 'Green Garden':
      return 1.5;
    case 'Tropical Island':
      return 3;
    case 'All or Nothing':
      return 5;
    default:
      return 2.5;
  }
}


function limesToCut(wedgesNeeded, limes) {
  let totalWedges = 0;
  let limesCut = 0;

  for (let i = 0; i < limes.length; i++) {
    if (totalWedges >= wedgesNeeded) break;

    switch (limes[i]) {
      case 'small':
        totalWedges += 6;
        break;
      case 'medium':
        totalWedges += 8;
        break;
      case 'large':
        totalWedges += 10;
        break;
    }

    limesCut++;
  }

  return limesCut;
}

function remainingOrders(timeLeft, orders) {
  let i = 0;
  let juiceTime = 0;

  while (i < orders.length) {
    juiceTime += timeToMixJuice(orders[i]);
    i++;
    if (timeLeft <= juiceTime) break;
  }

  return orders.slice(i);
}

const orders = [
  'Pure Strawberry Joy',
  'Pure Strawberry Joy',
  'Vitality',
  'Tropical Island',
  'All or Nothing',
  'All or Nothing',
  'All or Nothing',
  'Green Garden',
  'Limetime',
];

console.log(remainingOrders(13, orders));

// function timeToMixJuice(juice) {
//   switch (juice) {
//     case 'Pure Strawberry Joy':
//       return 0.5;
//     case 'Energizer':
//     case 'Green Garden':
//       return 1.5;
//     case 'Tropical Island':
//       return 3;
//     case 'All or Nothing':
//       return 5;
//     default:
//       return 2.5;
//   }
// }