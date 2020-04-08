import "bootstrap";
import "../plugins/flatpickr";

import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import 'flatpickr/dist/flatpickr.min.css'

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';

flatpickr(".datepicker", {
  minDate: new Date,
  altInput: true,
});

flatpickr(".TimePicker", {
    // enableTime: true,
    minDate: new Date,
    altInput: true,
    plugins: [new rangePlugin({ input: ".timePicker-end"})]
  });

initMapbox();
