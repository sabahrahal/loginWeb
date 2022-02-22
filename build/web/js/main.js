const form = document.getElementById('user-form');
const inputs = document.querySelectorAll('.form input');

const expressions = {
	username: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
	password: /^.{4,12}$/, // 4 a 12 digitos.
	email: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/
};

const validateForm = (e) => {
    switch (e.target.name) {
       case "username" :
        if(expressions.username.test(e.target.value)){
            document.getElementById('input_username').classList.remove('error-form');
            document.getElementById('input_username').classList.add('correct-form');
            document.getElementById('p-username').classList.add('p-hidden');
        } else{
            document.getElementById('input_username').classList.add('error-form');
            document.getElementById('input_username').classList.remove('correct-form');
            document.getElementById('p-username').classList.remove('p-hidden');
        }
            break; 

       case "email" :
        if(expressions.email.test(e.target.value)){
            document.getElementById('input_email').classList.remove('error-form');
            document.getElementById('input_email').classList.add('correct-form');
            document.getElementById('p-email').classList.add('p-hidden');
        } else{
            document.getElementById('input_email').classList.add('error-form');
            document.getElementById('input_email').classList.remove('correct-form');
            document.getElementById('p-email').classList.remove('p-hidden');
        }
       break; 

       case "password" :
        if(expressions.password.test(e.target.value)){
            document.getElementById('input_password').classList.remove('error-form');
            document.getElementById('input_password').classList.add('correct-form');
            document.getElementById('p-password').classList.add('p-hidden');
        } else{
            document.getElementById('input_password').classList.add('error-form');
            document.getElementById('input_password').classList.remove('correct-form');
            document.getElementById('p-password').classList.remove('p-hidden');
        }
       break; 
    } 
};

inputs.forEach((input)=>{
    input.addEventListener('keyup', validateForm);
    input.addEventListener('blur', validateForm);
});

form.addEventListener('submit',(e)=>{
     
});

