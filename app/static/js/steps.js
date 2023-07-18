document.addEventListener("DOMContentLoaded", function () {
  var nextButton1 = document.getElementById("next1");
  var nextButton2 = document.getElementById("next2");
  var submitButton = document.querySelector("button.button-save");

  nextButton1.disabled = true;
  nextButton1.style.opacity = 0.5;
  nextButton2.disabled = true;
  nextButton2.style.opacity = 0.5;
  submitButton.disabled = true;
  submitButton.style.opacity = 0.5;

  var fieldset1 = document.getElementById("fieldset1");
  var fieldset2 = document.getElementById("fieldset2");
  var fieldset3 = document.getElementById("fieldset3");

  fieldset1.addEventListener("input", function () {
    var isComplete = validateFieldset(fieldset1);
    nextButton1.disabled = !isComplete;
    nextButton1.style.opacity = isComplete ? 1 : 0.5;
  });

  fieldset2.addEventListener("input", function () {
    var isComplete = validateFieldset(fieldset2);
    nextButton2.disabled = !isComplete;
    nextButton2.style.opacity = isComplete ? 1 : 0.5;
  });

  fieldset3.addEventListener("input", function () {
    var isComplete = validateFieldset(fieldset3);
    submitButton.disabled = !isComplete;
    submitButton.style.opacity = isComplete ? 1 : 0.5;
  });

  function validateFieldset(fieldset) {
    var inputs = fieldset.querySelectorAll("input[required], select[required]");
    var isComplete = true;

    inputs.forEach(function (input) {
      var isValid = input.checkValidity(); // Verificar validez del campo según el patrón

      if (input.value.trim() === "" || !isValid) {
        isComplete = false;
      }
    });

    return isComplete;
  }
});
