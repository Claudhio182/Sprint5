<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <!-- Mi CSS -->
  <link rel="stylesheet" href="../css/style.css">
  <title>Login</title>
</head>

<body>

  <div class="container-form">
    <div class="frame">
      <div class="nav">
        <ul class="links">
          <li class="signin-active"><a class="btn">Iniciar sesión</a></li>
          <li class="signup-inactive"><a class="btn">Crea tu cuenta</a></li>
        </ul>
      </div>
      <div>
        <!-- Formulario de Login -->
        <form action="./SrvLogin" method="post" class="form-signin" name="form">
          <div class="error-container" id="error-container"></div>
          <label for="username">RUN</label>
          <input class="form-styling" type="text" name="usuario_id" id="rut" />

          <label for="password">Contraseña</label>
          <input class="form-styling" type="password" name="contrasena" id="password" />

          <input type="checkbox" id="checkbox" />
          <label for="checkbox"><span class="ui"></span>Mantener mi sesión iniciada</label>
          <div class="btn-animate">
            <input type="submit" value="Iniciar Sesion" class="btn-input btn-signin">
          </div>
        </form>

        <!-- Forumulario de Registro -->
        <form action="./SrvCrearUsuario" method="post" class="form-signup">
          <div class="error-container2" id="error-container2"></div>
          
          <label for="usuario_id">RUN</label>
          <input class="form-styling" id="rut2" type="text" name="usuario_id" />

          <label for="nombre">Nombre Completo</label>
          <input class="form-styling" type="text" id="fullname" name="nombre" />

          <label for="password">Contraseña</label>
          <input class="form-styling" id="pwdregister1" type="password" name="contrasena" />

          <label for="tipo">Tipo de usuario</label>
          <select name="tipo" class="form-styling form-control" id="tipo-usuario">
            <option selected disabled value="">Seleccione el tipo de usuario</option>
            <option>Cliente</option>
            <option>Profesional</option>
          </select>
          <input type="submit" value="Registrarme" class="btn-input btn-signin">
        </form>
      </div>

      <div class="forgot">
        <a class="forgotten-password" id="forgot-link" href="#">¿Olvidaste tu contraseña?</a>
      </div>
    </div>
  </div>

  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.14/angular.min.js"></script>
  <!-- Bootstrap -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
    crossorigin="anonymous"></script>

  <!-- SWAL2 -->
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

  <!-- MI JS -->
  <script src="../js/main.js"> </script>

</body>

</html>