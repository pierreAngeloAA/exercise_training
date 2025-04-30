const numbers = [6.0221515, 10, 23];

for (let i = 0; i < numbers.length; i++) {
  console.log(numbers[i]);
}


// for....of  loop
for (const number of numbers) {
  console.log(number);
}
// => 6.0221515
// => 10
// => 23
// Just like in regular for loops, you can use continue to stop the current iteration and break to stop the execution of the loop entirely.


// forEach
numbers.forEach((number, index) => console.log(number,"    ",index));
// => 6.0221515 0
// => 10 1
// => 23 2
// There is no way to stop the iteration once the forEach loop was started. The statements break and continue do not exist in this context

console.log("=====================");

function cardTypeCheck(cards, typeCard) {
  let countCards = 0;
  cards.forEach((card, index) => {if (card === typeCard){countCards += 1}});
  return countCards;
}
console.log(cardTypeCheck([1, 2, 3, 5,3,5,3, 4], 3));


function determineOddEvenCards(stack, type) {
  let countCards = 0;

  if (type){
    for (const card of stack) {
      if (card % 2 === 0){
        countCards += 1;
      };
    }
  return countCards
  }
  for (const card of stack) {
    if (card % 2 != 0){
      countCards += 1;
    };
  }
  return countCards
}

console.log(determineOddEvenCards([1, 2, 3, 1, 5, 6], false));