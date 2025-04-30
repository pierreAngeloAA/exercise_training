function buildSign(string_1, string_2) {
  return `Happy ${string_1} ${string_2}!`
}

function buildBirthdaySign(age) {
  if (age >= 50){
    return "Happy Birthday! What a mature fellow you are."
  }
  return "Happy Birthday! What a young fellow you are."
}

function graduationFor(name, age) {
  return `Congratulations ${name}!\nClass of ${age}`
  
}

function costOf(sign, currency) {
  return `Your sign costs ${(sign.split("").length * 2 + 20).toFixed(2)} ${currency}.`;
}


console.log(buildSign("Birthday", "Rob"));

console.log(buildBirthdaySign(0));

console.log(graduationFor('Hannah', 2022));

console.log(costOf('Happy Birthday Rob!', 'dollars'));