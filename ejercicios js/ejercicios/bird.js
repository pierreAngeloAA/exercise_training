
function totalBirdCount(birdsPerDay) {
  let contador = 0;
  for (let i = 0; i < birdsPerDay.length; i++) {
   contador += birdsPerDay[i]
  }
  return contador
}

function birdsInWeek(birdsPerDay, week) {
  const startIndex = (week - 1) * 7;
  let contador = 0;

  for (let i = startIndex; i < startIndex + 7; i++) {
    contador += birdsPerDay[i];
  }

  return contador;
}

function fixBirdCountLog(birdsPerDay) {
  for (let i = 0; i < birdsPerDay.length; i++) {
    if (i % 2 == 0) {
      birdsPerDay[i] += 1;
    }
  }
  return birdsPerDay;
}


Para Xiaomi Mi Watc


birdsPerDay = [2, 5, 0, 7, 4, 1, 3, 0, 2, 5, 0, 1, 3, 1];
console.log(totalBirdCount(birdsPerDay));
console.log(birdsInWeek(birdsPerDay, 2));
birdsPerDay = [2, 5, 0, 7, 4, 1];
console.log(fixBirdCountLog(birdsPerDay));