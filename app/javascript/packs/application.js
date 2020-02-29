import "bootstrap";
import { pickDate } from 'components/flatpickr';
import { toggleActive } from 'components/dashboard';

pickDate();

$('#show-carousel').carousel({
  interval: 3000
});

toggleActive();
