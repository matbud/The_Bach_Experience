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
    // const unavailableDates = JSON.parse(document.querySelector('.planning-table').dataset.unavailable) // doesn't work
    const startDateCalendar = flatpickr(startDateInputPlanning, {
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      enable: [availableDates],
      // doesn't work
      // disable: unavailableDates, 
      onChange: function (selectedDates, selectedDate) {
        if (selectedDate === "") {
          endDateInputPlanning.disabled = true;
        }
        let minDate = selectedDates[0];
        endDateCalendar.set("minDate", minDate);
        endDateInputPlanning.disabled = false;
      },
    });
    
    const endDateCalendar = flatpickr(endDateInputPlanning, {
      enable: [availableDates],
      enableTime: true,
      dateFormat: "Y-m-d H:i"
    });

    const editPlanningStartInput = document.querySelectorAll('.edit_planning_start_date')
    const editPlanningEndInput = document.querySelectorAll('.edit_planning_end_date')
    if (editPlanningStartInput && editPlanningEndInput) {
        for (let i = 0; i < editPlanningStartInput.length; i += 1) {
        const startDateCalendar = flatpickr(editPlanningStartInput[i], {
          enableTime: true,
          dateFormat: "Y-m-d H:i",
          enable: [availableDates],
          // doesn't work
          // disable: unavailableDates, 
          onChange: function (selectedDates, selectedDate) {
            if (selectedDate === "") {
              endDateInputPlanning.disabled = true;
            }
            let minDate = selectedDates[0];
            endDateCalendar.set("minDate", minDate);
            endDateInputPlanning.disabled = false;
          },
        });
        
        const endDateCalendar = flatpickr(editPlanningEndInput[i], {
          enable: [availableDates],
          enableTime: true,
          dateFormat: "Y-m-d H:i"
        });
      }
    }
  }
};

export { initFlatpickr };
