function dayRate(price) {
  return price * 8
}
function daysInBudget(value,price) {
  return Math.round(value / dayRate(price));
}

function daysInBudget(value,price) {
  return Math.floor(value / dayRate(price));
}
export function priceWithMonthlyDiscount(price, days, discount) {
  const dayRateValue = dayRate(price);
  const fullMonths = Math.floor(days / 22);
  const remainingDays = days % 22;
  const discountedRate = dayRateValue * 22 * (1 - discount);
  const costFullMonths = fullMonths * discountedRate;
  const costRemainingDays = remainingDays * dayRateValue;
  const total = costFullMonths + costRemainingDays;
  return Math.ceil(total);
}



console.log(dayRate(89));

console.log(daysInBudget(20000,89));

console.log(priceWithMonthlyDiscount(89, 230, 0.42));