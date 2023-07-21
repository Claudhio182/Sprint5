/*Login */

$(function() {
	$(".btn").click(function() {
		$(".form-signin").toggleClass("form-signin-left");
		$(".form-signup").toggleClass("form-signup-left");
		$(".frame").toggleClass("frame-long");
		$(".signup-inactive").toggleClass("signup-active");
		$(".signin-active").toggleClass("signin-inactive");

		$(this).removeClass("idle").addClass("active");
	});
});

$(function() {
	$(".btn-signup").click(function() {

		$(".success").toggleClass("success-left");
	});
});

$(function() {
	$(".btn-signin").click(function() {
		$(".btn-animate").toggleClass("btn-animate-grow");
		$(".welcome").toggleClass("welcome-left");
		$(".cover-photo").toggleClass("cover-photo-down");
		$(".profile-photo").toggleClass("profile-photo-down");
		$(".btn-goback").toggleClass("btn-goback-up");
	});
});

/* Mi JS */
const handleSubmit = (event) => {
	event.preventDefault();

	//Para el primer formulario (iniciar sesións)
	const rut = document.getElementById("rut").value;
	const password = document.getElementById("password").value;

	console.log(rut);

	const errorContainer = document.getElementById("error-container");

	if (!rut || !password) {
		const errorMessage = "Por favor complete todos los campos";
		errorContainer.innerHTML = `<p style="color: #FF1212; margin: 0">${errorMessage}</p>`;
		return;
	}

	if (password !== "1234") {
		const errorMessage = "La contraseña es incorrecta";
		errorContainer.innerHTML = `<p style="color: #FF1212; margin: 0">${errorMessage}</p>`;
		return;
	}

	if (password == "1234") {
		const bienvenido = "Bienvenido";
		errorContainer.innerHTML = `<p style="color: #56FF12; margin:0">${bienvenido} ${rut} !</p>`
	}

	// Si no hay errores, puedes enviar el formulario o realizar otras acciones
	event.target.submit();
};

function handleSubmit2(event) {
	event.preventDefault();

	const fullName = document.getElementById("fullname").value;
	const rut2 = document.getElementById("rut2").value;
	const email = document.getElementById("email").value;
	const pwdregister1 = document.getElementById("pwdregister1").value;
	const pwdregister2 = document.getElementById("pwdregister2").value;

	const errorContainer2 = document.getElementById("error-container2");

	errorContainer2.innerHTML = ""; // Limpiar mensajes de error anteriores

	if (!fullName) {
		const errorMessage = "Por favor, ingrese su nombre completo";
		errorContainer2.innerHTML += `<p style="color: #FF1212;">${errorMessage}</p>`;
		return;
	}

	if (!rut2) {
		const errorMessage = "Por favor, ingrese su RUT";
		errorContainer2.innerHTML += `<p style="color: #FF1212;">${errorMessage}</p>`;
		return;
	}

	if (!email) {
		const errorMessage = "Por favor, ingrese su correo electrónico";
		errorContainer2.innerHTML += `<p style="color: #FF1212;">${errorMessage}</p>`;
		return;
	}

	if (!pwdregister1) {
		const errorMessage = "Por favor, ingrese una contraseña";
		errorContainer2.innerHTML += `<p style="color: #FF1212;">${errorMessage}</p>`;
		return;
	}

	if (!pwdregister2) {
		const errorMessage = "Por favor, confirme su contraseña";
		errorContainer2.innerHTML += `<p style="color: #FF1212;">${errorMessage}</p>`;
		return;
	}

	if (pwdregister1 !== pwdregister2) {
		const errorMessage = "Las contraseñas no coinciden";
		errorContainer2.innerHTML += `<p style="color: #FF1212;">${errorMessage}</p>`;
		return;
	}

	if (pwdregister1 && pwdregister2 !== "1234") {
		const errorMessage = "Contraseña incorrecta";
		errorContainer2.innerHTML = `<p style="color: #FF1212;">${errorMessage}</p>`;
		return;
	}


	if (pwdregister1 && pwdregister2 == "1234") {
		const bienvenido = "Su cuenta ha sido creada con exito";
		errorContainer2.innerHTML = `<p style="color: #56FF12;">${bienvenido} ${fullName}</p>`;
		return;
	}

	// Si no hay errores, puedes enviar el formulario o realizar otras acciones
	event.target.submit();
};

// Obtener los elementos de las pestañas, el div "forgot" y el enlace "¿Olvidaste tu contraseña?"
let signinTab = document.querySelector('.signin-active');
let signupTab = document.querySelector('.signup-inactive');
let forgotDiv = document.querySelector('.forgot');
let forgotLink = document.getElementById('forgot-link');

// Agregar el evento click a las pestañas
signinTab.addEventListener('click', function() {
	// Mostrar el div "forgot" solo en la pestaña "Iniciar sesión"
	forgotDiv.style.display = 'block';
});

signupTab.addEventListener('click', function() {
	// Ocultar el div "forgot" en la pestaña "Crear cuenta"
	forgotDiv.style.display = 'none';
});

// Mostrar el div "forgot" inicialmente en la pestaña "Iniciar sesión"
forgotDiv.style.display = 'block';