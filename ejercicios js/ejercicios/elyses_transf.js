function seeingDouble(deck){
 return deck.map((value) => value * 2);
}
console.log(seeingDouble([1, 2, 3, 4]));

function threeOfEachThree(deck){
  const result = [];

  for (let i = 0; i < deck.length; i++) {
    if(deck[i] === 3){
      result.push(3, 3, 3);
    }else{
      result.push(deck[i]);
    }
  }
  return result
}

function middleTwo(deck) {
  let result = [deck[4], deck[5]];
  return result 
  
}

function sandwichTrick(deck) {
  const top = deck.shift();
  const bottom = deck.pop();

  deck.splice(deck.length / 2, 0, bottom, top )

  return deck;
}

function twoIsSpecial(deck) {
 return deck.filter((value) => value == 2);
}

function perfectlyOrdered(deck) {
  return deck.sort((a, b) => a - b);
}

function reorder(deck) {
  return deck.reverse();
  
}

// const deck = [1, 2, 3, 5, 6, 10];
// console.log(sandwichTrick(deck));

let deck = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

console.log(middleTwo(deck));

console.log(sandwichTrick(deck));

console.log(twoIsSpecial(deck));
deck = [1, 2, 3, 5, 6, 10]
console.log(perfectlyOrdered(deck));

console.log(reorder(deck));