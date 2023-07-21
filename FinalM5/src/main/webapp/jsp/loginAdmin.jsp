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
        </ul>
      </div>

      <div>
        <!-- Formulario de Login -->
        <form action="../SrvLoginAdmin" method="post" class="form-signin" name="form">
          <div class="error-container" id="error-container"></div>
          <label for="username">RUN</label>
          <input class="form-styling" type="text" name="admin_id" id="rut" />

          <label for="password">Contraseña</label>
          <input class="form-styling" type="password" name="contrasena" id="password" />

          <input type="checkbox" id="checkbox" />
          <label for="checkbox"><span class="ui"></span>Mantener mi sesión iniciada</label>
          <div class="btn-animate">
            <input type="submit" value="Iniciar Sesion" class="btn-input btn-signin">
          </div>
        </form>
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