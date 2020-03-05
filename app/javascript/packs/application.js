import "bootstrap";
import "../plugins/flatpickr";
import flatpickr from "flatpickr"

flatpickr(".TimePicker", {
    enableTime: true,
    minDate: "2020",
    altInput: true,
    plugins: [new minMaxTimePlugin({ table: { "2020-01-10": { minTime: "09:00", maxTime: "24:00" } } })]
  });