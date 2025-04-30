const numberOfMoons = [0, 2, 14];
const [venus, mars, neptune] = numberOfMoons;
console.log(neptune);

// const [a, b, ...everythingElse] = [0, 1, 1, 2, 3, 5, 8];
// console.log(everythingElse);

const oneToFive = [1, 2, 3, 4, 5];
const oneToTen = [...oneToFive, 6, 7, 8, 9, 10];
console.log(oneToTen);

const deck = [5, 9, 7, 1, 8];

function getFirstCard(deck){
  const [firstCard] = deck
  return firstCard;
}
console.log(getFirstCard(deck));



function swapTopTwoCards(deck) {
  let card = deck[0];
  deck[0] = deck[1];
  deck[1] = card;
  return deck
}
console.log(swapTopTwoCards(deck));


function discardTopCard(deck) {
  const [firstCard, ...remainingDeck] = deck;
  return [firstCard, remainingDeck];
}
console.log(discardTopCard(deck))


function insertFaceCards(deck) {
  if (deck.length === 0) {
    return [undefined, 'jack', 'queen', 'king'];
  }
  deck.splice(1, 0, 'jack', 'queen', 'king');
  return deck;
}