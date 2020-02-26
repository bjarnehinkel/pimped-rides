import flatpickr from "flatpickr";

const pickDate = () => {
  flatpickr("#dates", {
  mode: "range",
    minDate: "today",
    dateFormat: "Y-m-d",
    disable: [
        function(date) {
            // disable every multiple of 8
            return !(date.getDate() % 8);
        }
    ]
  } );
}

export { pickDate }


