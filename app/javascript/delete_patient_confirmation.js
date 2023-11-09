document.addEventListener('turbolinks:load', function() {
  const deletePatientButton = document.getElementById('delete-patient-button');

  if (deletePatientButton) {
    deletePatientButton.addEventListener('click', function(event) {
      event.preventDefault(); // Prevent the default form submission
      if (confirm('Are you sure you want to delete this patient?')) {
        // If the user confirms, submit the form
        event.target.closest('form').submit();
      }
    });
  }
});
