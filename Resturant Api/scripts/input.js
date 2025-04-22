// Get all labels and inputs
const labels = document.querySelectorAll("label");
const inputs = document.querySelectorAll("input");

// Loop through each input-label pair
inputs.forEach((input, index) => {
  const label = labels[index];

  input.addEventListener("focus", () => {
    label.style.visibility = "hidden";
  });

  input.addEventListener("blur", () => {
    if (input.value === "") {
      label.style.visibility = "visible";
    }
  });
});