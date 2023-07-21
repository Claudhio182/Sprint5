<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <!-- Mi CSS -->
  <link rel="stylesheet" href="../css/style.css">

  <title>Contacto</title>
</head>

<body>

  <main>

    <h2 class="title_h2">CONTACTO</h2>

     <!-- Formulario de contacto -->
  <div class="d-flex justify-content-center align-items-center p-3">
    <form id="login-form" class="formulario">
      <div class="form-row">

        <div class="col-md-12 mb-3">
          <label for="nombre">Nombre</label>
          <input type="text" class="form-control" name="nombre" placeholder="Nombre">
          <small id="nombreHelp" class="form-text text-danger"></small>
        </div>

        <div class="col-md-12 mb-3">
          <label for="apellido">Apellido</label>
          <input type="text" class="form-control" name="apellido" id="validationCustom02" placeholder="Apellido">
          <small id="apellidoHelp" class="form-text text-danger"></small>
        </div>
        <div class="col-md-12 mb-3">
          <label for="validationCustom03">Telefono</label> <input type="text" class="form-control"
            id="validationCustom03" placeholder="Telefono"> <small id="telefonoHelp"
            class="form-text text-danger"></small>
        </div>
        <div class="col-md-12 mb-3">
          <label for="validationCustom04">Email</label> <input type="text" class="form-control" id="validationCustom04"
            placeholder="Email">
          <small id="emailHelp" class="form-text text-danger"></small>
        </div>
        <div class="col-md-12 mb-3">
          <label for="validationCustom05">Mensaje</label>
          <textarea class="form-control" id="validationCustom05" cols="45" rows="3" placeholder="Mensaje"></textarea>
          <small id="mensajeHelp" class="form-text text-danger"></small>
        </div>
      </div>

      <div class="form-group">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="invalidCheck"> <label class="form-check-label"
            for="invalidCheck"> Acepto los términos y condiciones
          </label><br>
          <small id="checkHelp" class="form-text text-danger"></small>
        </div>
      </div>
      <div class="d-flex justify-content-center p-4">
        <button class="btn btn-warning" type="submit">Enviar</button>
      </div>
    </form>

  </div>
  </main>
  <!--Footer-->
  <footer class="footer container">

    <div class="footer-2">
      <p>Prevencion de Riesgos</p>
      <p>Creado por Monica Sanchez - Claudio Gatica</p>
      <p> © Todos los derechos reservados</p>
    </div>

  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
    crossorigin="anonymous"></script>

</body>

</html>