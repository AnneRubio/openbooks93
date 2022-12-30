import { Controller } from "@hotwired/stimulus";
// Import flatpickr function:
import flatpickr from "flatpickr";
// The range plugin is also needed in order to use two inputs:
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ 'startDateInput', 'endDateInput' ]
  connect() {
    flatpickr(this.startDateInputTarget, {
      enableTime: true,
      mode: "range",
      minDate: "today",
      dateFormat: "Y-m-d",
      "plugins": [new rangePlugin({ input: this.endDateInputTarget})]
    })
  }
}
