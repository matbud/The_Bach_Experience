import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const startDateInput = document.getElementById('event_start_date')
  const endDateInput = document.getElementById('event_end_date')

  if (startDateInput && endDateInput) {
    const startDateCalendar = flatpickr(startDateInput, {
      minDate: 'today',
      dateFormat: 'd-m-Y',
      onChange: function(selectedDates, selectedDate) {
        if (selectedDate === '') {
          endDateInput.disabled = true;
        }
        let minDate = selectedDates[0];
        minDate.setDate(minDate.getDate() + 1); // adds one day to the start date
        endDateCalendar.set('minDate', minDate);
        endDateInput.disabled = false;
      }
    });

    const endDateCalendar = flatpickr(endDateInput, {
      minDate: 'today',
      dateFormat: 'd-m-Y'
    });
  }
}

export { initFlatpickr };