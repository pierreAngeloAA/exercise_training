function cookingStatus(time){
  if (time == 0){
  return 'Lasagna is done.'
  }
  if (time > 0) {
    return 'Not done, please wait.'
  }
  if (time == null) {
    return 'You forgot to set the timer.'
  }
}

function preparationTime(layers, time = 2) {
  return (layers.length) * time
}

function quantities(layers){
  let noodles = 0;
  let sauce = 0;
  for (let i = 0; i < layers.length; i++) {
    if (layers[i] === 'sauce'){
      sauce += 1;
    }
    if (layers[i] === 'noodles'){
      noodles += 1;
    }
  }
  return {noodles: noodles, sauce: sauce};
}

function addSecretIngredient(friendsList, myList) {
  myList.push(friendsList[friendsList.length - 1]);
}

function scaleRecipe(recipe, number){
  number = number/2
  return {
            noodles: recipe.noodles * number,
            sauce: recipe.sauce * number,
            mozzarella: recipe.mozzarella * number,
            meat: recipe.meat * number 
          }
}


// function scaleRecipe(recipe, portions) {
//   const scale = portions / 2;
//   const scaledRecipe = {};

//   for (let ingredient in recipe) {
//     scaledRecipe[ingredient] = recipe[ingredient] * scale;
//   }

//   return scaledRecipe;
}




console.log(cookingStatus())

layers = ['sauce', 'noodles', 'sauce', 'meat', 'mozzarella', 'noodles'];
console.log(preparationTime(layers, 3))

console.log(quantities(['noodles', 'sauce', 'noodles']));



const friendsList = ['noodles', 'sauce', 'mozzarella', 'kampot pepper'];
const myList = ['noodles', 'meat', 'sauce', 'mozzarella'];
console.log(addSecretIngredient(friendsList, myList));


const recipe = {
  noodles: 200,
  sauce: 0.5,
  mozzarella: 1,
  meat: 100,
};

console.log(scaleRecipe(recipe, 5));