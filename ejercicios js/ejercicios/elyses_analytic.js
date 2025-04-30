function getCardPosition(numbers, card) {
  return numbers.indexOf(card);
}

console.log(getCardPosition([9, 7, 3, 2], 2))


function doesStackIncludeCard(numbers, card) {
  return numbers.includes(card)
}
console.log(doesStackIncludeCard([9, 7, 3, 2], 2))

function isEachCardEven(numbers){
 return numbers.every((num) => num % 2 === 0);
}
console.log(isEachCardEven([2, 4, 6, 7]));

function doesStackIncludeOddCard(numbers){
  return numbers.some((num) => num % 2 !== 0);
}
console.log(doesStackIncludeOddCard([2, 4, 6, 7]));

function getFirstOddCard(numbers){
  return numbers.find((num) => num % 2 !== 0)
}
console.log(getFirstOddCard([2, 4, 6, 7]));

function getFirstEvenCardPosition(numbers){
  return numbers.findIndex((num) => num % 2 === 0)
}
console.log(getFirstEvenCardPosition([5, 2, 3, 1]))

