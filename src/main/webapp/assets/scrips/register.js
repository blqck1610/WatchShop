

const form = document.getElementById('register-form');
form.addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form submission for now
  
    // Get input field values
    const msv = document.getElementById("input-msv").value;
    const name = document.getElementById("input-name").value;

    const email = document.getElementById("input-email").value;
    const password = document.getElementById("input-password").value;
    const comfPassword = document.getElementById("input-verify-password").value;
    // Add more input fields as needed
  
    // Reset border colors
    const inputFields = document.querySelectorAll(".nor-input");
    inputFields.forEach(input => {
      input.classList.remove("invalid-input");
    });
    const errorMessages = document.querySelectorAll(".error-message");
  errorMessages.forEach(message => {
    message.style.display = "none";
  });
  
    // Perform validation
    let isValid = true;
  
    if (name === "") {
      isValid = false;
      const nameInput = document.getElementById("input-name");
      nameInput.classList.add("invalid-input");
      nameInput.nextElementSibling.style.display = "block";
    }
    if (password === "") {
      isValid = false;
      const passwordInput = document.getElementById("input-password");
      passwordInput.classList.add("invalid-input");
      passwordInput.nextElementSibling.style.display = "block";
    }
    if(comfPassword != password){
		isValid = false;
      const comfPasswordInput = document.getElementById("input-verify-password");
      comfPasswordInput.classList.add("invalid-input");
     comfPasswordInput.nextElementSibling.style.display = "block";
	}
    if (msv === "") {
        isValid = false;
        const nameInput = document.getElementById("input-msv");
        nameInput.classList.add("invalid-input");
        nameInput.nextElementSibling.style.display = "block";
      }
  
    if (!isValidEmail(email)) {
      isValid = false;
      const nameInput = document.getElementById("input-email");
        nameInput.classList.add("invalid-input");
        nameInput.nextElementSibling.style.display = "block";
    }
  
  
    // Add more validation as needed
  
    if (isValid) {
      // Form is valid, you can proceed with submission or other actions
      // For example, you can uncomment the line below to submit the form
      // document.getElementById("myForm").submit();
     
      form.submit();
    }
  });
  
  function isValidEmail(email) {
    // Simple email validation regex
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
  }
