import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const startDateInput = document.getElementById("event_start_date");
  const endDateInput = document.getElementById("event_end_date");
  const startDateInputPlanning = document.getElementById("planning_start_time");
  const endDateInputPlanning = document.getElementById("planning_end_time");

  if (startDateInput && endDateInput) {
    const startDateCalendar = flatpickr(startDateInput, {
      minDate: "today",
      dateFormat: "d-m-Y",
      onChange: function (selectedDates, selectedDate) {
        if (selectedDate === "") {
          endDateInput.disabled = true;
        }
        let minDate = selectedDates[0];
        minDate.setDate(minDate.getDate() + 1); // adds one day to the start date
        let maxDate = new Date()
        maxDate.setDate(minDate.getDate() + 2);
        endDateCalendar.set("enable", [{'from': minDate, 'to': maxDate}]);
        endDateInput.disabled = false;
      },
    });

    const endDateCalendar = flatpickr(endDateInput, {
      minDate: "today",
      dateFormat: "d-m-Y",
    });
  } else if (startDateInputPlanning && endDateInputPlanning) {
    const availableDates = JSON.parse(document.querySelector('.planning-table').dataset.available)
    const unavailableDates = JSON.parse(document.querySelector('.planning-table').dataset.unavailable)
    const startDateCalendar = flatpickr(startDateInputPlanning, {
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      enable: [availableDates],
      disable: unavailableDates, // doesn't work for now
      onChange: function (selectedDates, selectedDate) {
        if (selectedDate === "") {
          endDateInputPlanning.disabled = true;
        }
        let minDate = selectedDates[0];
        endDateCalendar.set("minDate", minDate);
        endDateInputPlanning.disabled = false;
      },
    });
    console.log(startDateCalendar)

    const endDateCalendar = flatpickr(endDateInputPlanning, {
      enableTime: true,
      dateFormat: "Y-m-d H:i"
    });
  }
};

export { initFlatpickr };
