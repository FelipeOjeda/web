<?php 
	include 'includes/conexion.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	$query = "SELECT * FROM cursos ORDER BY idCurso ASC";
	$resQuery = mysqli_query($con,$query);
?>




<!DOCTYPE html>


<html>
	<head>
		<title>Inicio</title>
	</head>
	<body>


		<form action="cursos.php" method="post">
		  Materias:<br/> 
		   <select name="curso">
		   <?php
			   	while ($row = mysqli_fetch_array($resQuery)) {  
					echo "<option value='".$row['idCurso']."'>".$row['nombreCurso'] ."</option>";
				}
			?>




		   </select>
		  <input type="submit" value="Buscar" />



		</form>
	</body>
</html>