console.log('hello from webpack')


import "bootstrap";
// import flatpickr from "flatpickr";
import { pickDate } from 'components/flatpickr';
// import { openModal } from 'components/book';
// import { closeModal } from 'components/book';
// import { outsideClick } from 'components/book';

pickDate();
// openModal();
// closeModal();
// outsideClick();
$('#show-carousel').carousel({
  interval: 3000
})


var datesInput = document.getElementById('booking_days');

datesInput.addEventListener('change', (e) => {
  var price = document.getElementById('listing-card-price');
  var totalPriceHtml = document.getElementById('total-price');
  var days = e.currentTarget.value;
  var price_array = price.innerHTML.split("€");
  var pricePerDay = parseInt(price_array[0]);
  var totalPrice = pricePerDay * days;
  var newTotalPriceHtml = `<strong>Total Price: €${totalPrice.toString()}</strong>`;
  totalPriceHtml.innerHTML = newTotalPriceHtml;

});
