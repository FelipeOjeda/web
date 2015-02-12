<?php 
	include 'includes/conexion.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	$ids = $_POST["curso"];
	$query = "SELECT uc.idUsuario, u.nombreUsuario  FROM usuarios_curso AS uc, usuarios AS u WHERE uc.idUsuario= u.idUsuario AND uc.idCurso=".$ids;
	$resQuery = mysqli_query($con,$query);
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Usuarios</title>
	</head>
	<body>



		<form action="notas.php" method="post">
		  Estudiantes:<br/> 
		   <select name="usuario">
		   <?php
			   	while ($row = mysqli_fetch_array($resQuery)) {  
					echo "<option value='".$row['idUsuario']."'>".$row['nombreUsuario'] ."</option>";
				}
			?>
		   </select>
		   


		   <?php
			   echo'	<input type="hidden" value="'.$ids.'" name="curso" />'
			?>




		  <input type="submit" value="Buscar" />
		</form>
	</body>
</html>