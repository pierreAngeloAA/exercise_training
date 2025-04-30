import { notify } from './notifier';
import { order } from './grocer';


/**
 * @return void
 */
export function onSuccess() {
  notify({ message: 'SUCCESS' }); 
}

/**
 * @return void
 */
export function onError() {
  notify({ message: 'ERROR'});
}


export function orderFromGrocer(query, onSuccessCallback, onErrorCallback) {
  order(query, onSuccess, onError);
}
/**
 * @param {string} variety
 * @param {number} quantity
 * @return void
 */
export function postOrder(variety, quantity) {
    const query = {
    variety,
    quantity
  };
  orderFromGrocer(query, onSuccess, onError);
}
