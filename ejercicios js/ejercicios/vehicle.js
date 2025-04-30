function needsLicense(vehicle){
  if (vehicle == 'car' || vehicle == 'truck' ){
    return true
  }
  return false
}

function chooseVehicle(option1, option2) {
  let option = [option1, option2].sort();
  return `${option[0]} is clearly the better choice.`;
}

function calculateResellPrice(originalPrice, age){
  if (age < 3){
    return originalPrice * 0.8
  }
  if (age > 10){
    return originalPrice * 0.5
  }
  if (age >= 3 && age <= 10){
    return originalPrice * 0.7
  } 
}


console.log(chooseVehicle('Volkswagen Beetle', 'Volkswagen Golf'));
console.log(needsLicense('truck'));

console.log(calculateResellPrice(1000, 1));