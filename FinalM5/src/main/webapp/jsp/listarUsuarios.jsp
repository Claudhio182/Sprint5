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
  <link rel="stylesheet" href="./css/style.css">

  <title>Listar Usuarios</title>
</head>

<body>

  <h2 class="title_h2">Lista de Usuarios</h2>

  <div class="d-flex justify-content-center align-items-center p-3">
    <input type="hidden" name="usuario_id" value=<%=request.getParameter("usuario_id")%>>
    <form id="login-form" class="formulario">

      <table>
        <tr>
          <td class="busqueda">ID de Usuario:</td>
          <td class="respuesta"><%=request.getParameter("usuario_id")%></td>
        </tr>
        <tr>
          <td class="busqueda">Nombre :</td>
          <td class="respuesta"><%=request.getParameter("nombre")%></td>
        </tr>
        <tr>
          <td class="busqueda">Tipo:</td>
          <td class="respuesta"><%=request.getParameter("detalle")%></td>
        </tr>
      
      </table>

      <div class="information-1">
            <a href="crearCapacitacion.jsp" class="btn-1">Crear Capacitacion</a>
      </div>
  
      <div class="information-1">
            <a href="hojaCliente.jsp" class="btn-1">Volver a Cliente</a>
      </div>
    </form>
  </div>

  <!--Footer-->
  <footer class="footer container">

    <div class="footer-2">
      <p>Ingenieria en Prevencion de Riesgos</p>
      <p>Creado por Monica Sanchez - Claudio Gatica</p>
      <p>� Todos los derechos reservados</p>
    </div>

  </footer>
  
  <script language="javascript" type="text/javascript">
	
	function update(){
		var usuario_id= document.forms[0].elements['usuario_id'].value;
		window.location.href="update.jsp?usuario_id=" + usuario_id; 
	}
	</script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
    crossorigin="anonymous"></script>

</body>

</html>