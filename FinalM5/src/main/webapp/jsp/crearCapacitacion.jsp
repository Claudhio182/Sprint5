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

  <title>Capacitacion</title>
</head>

<body>

  <main>
  
      <h2 class="title_h2">Formulario de Capacitacion</h2>

    <!-- Formulario de crear capacitacion -->
    <div class="d-flex justify-content-center align-items-center p-3">
      <form action="../SrvCrearCapacitacion" method="post" id="login-form" class="formulario">
        <div class="form-row">

          <div class="col-md-12 mb-3">
            <label for="usuario_id">Ingrese id de Cliente:</label>
            <input name="usuario_id" type="text" class="form-control" id="validationCustom01"
              placeholder="Ingrese su run como ID">
            <small id="rutHelp" class="form-text text-danger"></small>
          </div>

          <div class="col-md-12 mb-3">
            <label for="nombre">Nombre de la capacitación:</label>
            <select name="nombre" class="form-control">
              <option selected disabled value="">Selecciona tu capacitacion</option>
              <option>"Introducción a la Prevención de Riesgos Laborales"</option>
              <option>"Prevención de Riesgos en Oficinas y Espacios Laborales"</option>
              <option>"Prevención de Riesgos en el Ámbito Industrial"</option>
            </select>
            <small id="capacitacionHelp" class="form-text text-danger"></small>
          </div>

          <div class="col-md-12 mb-3">
            <label for="detalle">Selecciona tu capacitación:</label>
            <select name="detalle" class="form-control" id="dia">
              <option selected disabled value="">Selecciona una opcion</option>
              <option>Martes - 09:00-11:00 - Providencia</option>
              <option>Miercoles - 14:00 - 16:00 - Santiago Centro</option>
              <option>Jueves 16:00 - 18:00 - Providencia</option>
            </select>
            <small id="selectCapHelp" class="form-text text-danger"></small>
          </div>

          <div class="col-md-12 mb-3">
            <label for="cantidad">Cantidad de participantes:</label>
            <input name="cantidad" type="text" class="form-control" id="validationCustom06" placeholder="Solo numeros">
            <small id="cantidadHelp" class="form-text text-danger"></small>
          </div>
        </div>

        <div class="form-group">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="invalidCheck">
            <label class="form-check-label" for="invalidCheck"> Acepto los términos y condiciones </label>
            <br />
            <small id="checkHelp" class="form-text text-danger"></small>
          </div>
        </div>

        <div class="d-flex justify-content-center p-4">
          <button class="btn btn-warning" type="submit">Crear Capacitación</button>
        </div>
      </form>
    </div>

  </main>

  <!--Footer-->
  <footer class="footer container">

    <div class="footer-2">
      <p>Ingenieria en Prevencion de Riesgos</p>
      <p>Creado por Monica Sanchez - Claudio Gatica</p>
      <p>� Todos los derechos reservados</p>
    </div>

  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
    crossorigin="anonymous"></script>
</body>


</html>