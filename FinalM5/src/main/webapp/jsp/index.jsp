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

  <title>Home</title>
</head>

<body>
  <header class="header">
    <div class="menu container">
      <a href="#" class="logo"></a> 
      	<input type="checkbox" id="menu" /> 
      	<label for="menu"> 
     	 <img src="images/menu.png" alt="">
      </label>
      <nav class="navbar">
        <ul>
          <li><a href="login.jsp">Cliente</a></li>
          <li><a href="login.jsp">Profesional</a></li>
          <li><a href="loginAdmin.jsp">Administrativo</a></li>
          <li><a href="#formulario-footer">Contáctanos</a></li>
        </ul>
      </nav>
    </div>

    <div class="header-content container">
      <div class="header-txt">
        <h1>PREVENCION DE RIESGOS</h1>
        <p>Nuestra empresa, especializada en asesor�as en prevenci�n de
          riesgos, se dedica a ayudar a organizaciones y empresas a
          identificar, evaluar y controlar los riesgos laborales y
          ambientales presentes en sus actividades diarias. Nuestro objetivo
          principal es garantizar la seguridad y bienestar de los
          trabajadores, as� como proteger los activos y la reputaci�n de
          nuestros clientes.</p>
        <a href="#" class="btn-1">Informacion</a>
      </div>
    </div>
  </header>

  <section class="direction container">
    <p>Osorno, Chile.</p>
    <p>claudio.gatica@prevencion.com</p>
    <p>+32423423432</p>
  </section>

  <section class="about container">
    <div class="about-img">
      <img
        src="https://blog.tecmilenio.mx/hs-fs/hubfs/Ingeniero%20Industrial%20-%20Campo%20laboral.jpg?width=1155&height=650&name=Ingeniero%20Industrial%20-%20Campo%20laboral.jpg"
        alt="trabajadores en prevencion de riesgos" class="img-fluid">

    </div>
    <div class="about-txt">
      <h2>Nosotros</h2>
      <p>Contamos con un equipo de profesionales altamente capacitados
        y experimentados en el campo de la prevenci�n de riesgos, conformado
        por ingenieros, tecnicos y especialistas en seguridad laboral y
        ambiental. Nuestro personal est� al tanto de las ultimas normativas
        y regulaciones en materia de prevenci�n de riesgos, lo que nos
        permite ofrecer soluciones eficientes y adaptadas a las necesidades
        espec�ficas de cada empresa.</p>
      <a href="#" class="btn-1">Informacion</a>
    </div>
  </section>

  <main class="information container">

    <div class="information-1">
      <h3>1</h3>
      <p>Capacitaciones</p>
    </div>

    <div class="information-1">
      <h3>2</h3>
      <p>Asesorias</p>
    </div>

    <div class="information-1">
      <h3>3</h3>
      <p>Ingenieria</p>
    </div>

    <div class="information-1">
      <h3>4</h3>
      <p>Prevencion</p>
    </div>
  </main>

  <section class="capacitacion">

    <div class="capacitacion-1 txt">
      <span>01</span>
      <h3>Sustancias Peligrosas</h3>
      <p>Disponible</p>
    </div>

    <div class="capacitacion-2 txt">
      <span>02</span>
      <h3>Ergonomia y autocuidado</h3>
      <p>Disponible</p>
    </div>

    <div class="capacitacion-3 txt">
      <span>03</span>
      <h3>Uso Extintores</h3>
      <p>Disponible</p>
    </div>

    <div class="capacitacion-4 txt">
      <span>04</span>
      <h3>Equipo Proteccion Personal</h3>
      <p>Disponible</p>
    </div>

    <div class="capacitacion-5 txt">
      <span>05</span>
      <h3>Autocuidado Laboral</h3>
      <p>Disponible</p>
    </div>
  </section>

  <footer class="footer container" id="formulario-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="footer-content">
            <div class="footer-form">
              <h2 class="h2-contactanos">Contactanos</h2>

              <!-- Formulario de contacto -->
              <form action="./SrvIndex" method="post" id="login-form" class="formulario">
                <div class="contacto-form-container d-flex justify-content-center">
                  <div class="form-row">
                    <div class="col-md-12 mb-3">
                      <input type="text" class="form-control" id="validationCustom01" placeholder="Nombre">
                      <small id="nombreHelp" class="form-text text-danger"></small>
                    </div>

                    <div class="col-md-12 mb-3">
                      <input type="text" class="form-control" id="validationCustom04" placeholder="Correo">
                      <small id="emailHelp" class="form-text text-danger"></small>
                    </div>

                    <div class="col-md-12 mb-3">
                      <textarea class="form-text-area form-control" id="validationCustom05" cols="45" rows="3"
                        placeholder="Mensaje"></textarea>
                      <small id="mensajeHelp" class="form-text text-danger"></small>
                    </div>
                  </div>
                </div>

                <div class="d-flex justify-content-center p-4">
                  <button class="btn btn-warning" type="submit">Enviar</button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="footer-txt d-flex justify-content-center">
            <div>
              <h3>+569 534543534</h3>
              <p>claudio.gatica@prevencion.cl</p>
              <p>Ingenieria@prevencion.cl</p>
              <p>Osorno, Chile.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
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