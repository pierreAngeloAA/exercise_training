function createScoreBoard( ){
  return {
    "The Best Ever": 1000000
  };
}

function addPlayer(scoreBoard, playerName, score) {
  scoreBoard[playerName] = score;
  return scoreBoard;
}

function removePlayer(scoreBoard,playerName){
  delete scoreBoard[playerName]
  return scoreBoard
}

function updateScore(scoreBoard, playerName, score){
  scoreBoard[playerName] += score
  return scoreBoard
}

function applyMondayBonus(scoreBoard){
  for (let i in scoreBoard) {
    scoreBoard[i] += 100
  }
  return scoreBoard
}


// const obj = {
//   name: 'Ali',
//   age: 65,
// };

// for (let key in obj) {
//   console.log(key, obj[key]);
// }
// // name Ali
// // age 65

// const scoreBoard = {
//   'Dave Thomas': 44,
//   'Freyja Ćirić': 539,
//   'José Valim': 265,
// };
// // => { 'Dave Thomas': 144, 'Freyja Ćirić': 639, 'José Valim': 365 }

// function normalize(score) {
//   return 2 * score + 10;
// }

// var params = { score: 400, 
//               normalizeFunction: normalize 
//             };

// // => 810


function normalizeScore(params){
  return params.normalizeFunction(params.score)
}


console.log(createScoreBoard());
console.log(addPlayer({ 'Dave Thomas': 0 }, 'José Valim', 486373));
console.log(removePlayer({ 'Dave Thomas': 0 }, 'Dave Thomas'));
console.log(removePlayer({ 'Dave Thomas': 0 }, 'Rose Fanaras'));
console.log(updateScore({ 'Freyja Ćirić': 12771008 }, 'Freyja Ćirić', 73));
console.log(applyMondayBonus(scoreBoard));
console.log(normalizeScore(params));