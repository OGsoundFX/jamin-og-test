import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import minMaxTimePlugin from "flatpickr/dist/plugins/minMaxTimePlugin"
flatpickr(".datepicker", {
  allowInput: true
})

flatpickr(".TimePicker", {
  enableTime: true,
  minDate: "2020",
  altInput: true,
  plugins: [new minMaxTimePlugin({ table: { "2020-01-10": { minTime: "09:00", maxTime: "24:00" } } })]
});
