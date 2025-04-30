function translate2d(dx, dy) {
  return function(x, y) {
    return [x + dx, y + dy];
  };
}

function scale2d(sx, sy){
  return function(x, y){
    return [x * sx, y * sy];
  }
}

function composeTransform(f, g) {
  return function(x, y) {
    const [xf, yf] = f(x, y);
    return g(xf, yf);          
  };
}

function memoizeTransform(fn) {
  const cache = new Map();

  return function(x, y) {
    const key = `${x},${y}`;
    if (cache.has(key)) {
      return cache.get(key);
    } else {
      const result = fn(x, y);
      cache.set(key, result);
      return result;
    }
  };
}


// const moveCoordinatesRight2Px = translate2d(2, 0);
// const result = moveCoordinatesRight2Px(4, 8);
// console.log(result)


// const doubleScale = scale2d(2, 2);
// const result = doubleScale(6, -3);
// console.log(result)

