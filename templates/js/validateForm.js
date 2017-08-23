//   Authorization validate
$("#login-form").validate({
    rules: {

        email: {
            required: true
        },
        password: {
            required: true
        },
        agree: "required"
    },
    messages: {

        login: {
            required: "Please enter a email"
        },
        password: {
            required: "Please provide a password"
        }

    },
    errorClass: "error",
    validClass: "success"
});




//  Registration validate
$("#register-form").validate({
    rules: {

        name: {
            required: true,
            minlength: 5

        },
        email: {
            required: true
        },
        password: {
            required: true,
            minlength: 6
        },
        passwordRepeat: {
            required: true,
            minlength: 6,
            equalTo: "#register-password"
        },

        agree: "required"
    },
    messages: {

        name: {
            required: "Please enter a name",
            minlength: "Your name must consist of at least 5 characters"
        },
        email: {
            required: "Please enter a email",
            minlength: "Your username must consist of at least 5 characters"
        },
        password: {
            required: "Please provide a password",
            minlength: "Your password must be at least 6 characters long"
        },
        passwordRepeat: {
            required: "Please provide a password",
            minlength: "Your password must be at least 6 characters long",
            equalTo: "Please enter the same password as above"
        }
    },
    errorClass: "error",
    validClass: "success"
});


//  ContactForm validate
$("#contact-form").validate({
    rules: {


        userEmail: {
            required: true
        },
        userText: {
            required: true,
            minlength: 6
        },
        agree: "required"
    },
    messages: {

        userEmail: {
            required: "Please enter a email"
        },
        userText: {
            required: "Please enter a text",
        }

    },
    errorClass: "error",
    validClass: "success"
});

