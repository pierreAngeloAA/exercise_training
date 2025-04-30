export function twoSum (array_1, array_2){
  return Number(array_1.join(''))+ Number(array_2.join(''));

}


export function luckyNumber(number) {
  let invertido = parseInt(number.toString().split('').reverse().join(''));
  if (number === invertido){
    return true
  }else{
    return false
  }
}



export function errorMessage(input) {
  if (input === null || input === undefined || input === '') {
    return 'Required field';
  }

  const number = Number(input);

  if (isNaN(number) || number === 0) {
    return 'Must be a number besides 0';
  }

  return '';
}



console.log(twoSum([1, 2, 3], [1,0,0, 7]));


console.log(luckyNumber(1441));
