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
  
  <title>Buscador Capacitacion</title>
</head>
<body>
	<h2>Seleciona tu Capacitacion</h2>

	<form action="../SrvListarCapacitacion" method="post">
		<div class="d-flex justify-content-center align-items-center p-3">
			<table>
				<tr>
					<td class="busqueda">Ingrese el usuario del Cliente:</td>
					<td ">
						<input type="text" name="usuario_id" size="15">
					</td>
				</tr>
			</table>
			<br />
		<input type="submit"  value="Mostrar Informacion" >
	   </div>
	</form>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
    crossorigin="anonymous">
	</script>
</body>
</html>