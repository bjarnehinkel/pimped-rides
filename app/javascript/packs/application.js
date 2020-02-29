import "bootstrap";
import { pickDate } from 'components/flatpickr';
import { toggleActive } from 'components/dashboard';

pickDate();

$('#show-carousel').carousel({
  interval: 3000
<<<<<<< HEAD
});

toggleActive();

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
