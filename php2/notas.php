<?php 
	include 'includes/conexion.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	$SelecUsuario= $_POST["usuario"];
	$SelecMateria = $_POST["curso"];
	$query= "SELECT tn.nombreNota, tn.porcentajeNota, n.valor FROM tipo_nota AS tn , notas AS n WHERE tn.idTipo=n.idTipo AND n.idUsuario=$SelecUsuario AND n.idCurso=$SelecMateria";
	$nombre = "SELECT nombreUsuario FROM usuarios WHERE idUsuario=".$SelecUsuario;
	$resQuery = mysqli_query($con,$query);
	$resNombre = mysqli_query($con,$nombre);
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Notas</title>
	</head>
	<body>

		

		
		   <?php
		   		$row = mysqli_fetch_array($resNombre);
		   		echo"Notas de ".$row['nombreUsuario'];
			  while ($row = mysqli_fetch_array($resQuery)) {  
			  	$individual=$row['valor']*$row['porcentajeNota'];
					echo "<option value='".$row['idNota']."'>".$row['nombreNota']." ".$row['valor']."</option>";
				$completa+=$individual;
				}
				echo "Nota Definitiva:".$completa;
			?>
		   
	</body>
</html>