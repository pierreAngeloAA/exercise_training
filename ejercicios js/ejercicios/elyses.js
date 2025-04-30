
function getItem(array,position) {
  return array[position]
}

function setItem(array,position,replacementCard) {
  array.splice(position,1,replacementCard);
  return array
}

function insertItemAtTop(array, newCard) {
  array.push(newCard);
  return array
}

function removeItem(array,position) {
  array.splice(position,1);
  return array
}

function removeItemFromTop(array) {
  array.pop();
  return array
}

function insertItemAtBottom(array, newCard) {
  array.unshift(newCard);
  return array
}

function removeItemAtBottom(array) {
  array.shift()
  return array
}

function checkSizeOfStack(array, stackSize){
  return array.length === stackSize;
}

const position = 2;
const replacementCard = 6;
const array = [1, 2, 4, 1];
let newCard = 12;
let stackSize = 23

console.log(getItem(array, position));
console.log(setItem([1, 2, 4, 1], position, replacementCard));
console.log(insertItemAtTop(array, newCard));
console.log(removeItem(array,position));
console.log(removeItemFromTop(array));
console.log(insertItemAtBottom(array,newCard));
console.log(removeItemAtBottom(array));
console.log(checkSizeOfStack(array, stackSize));