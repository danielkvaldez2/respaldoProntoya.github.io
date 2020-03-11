<?php
	
	if(session_id()=="")
	{
	   session_start();
	}
	if(!isset($_SESSION["id_usuario"])) header("location: ../index.php"); 

	require '../funcs/loginConexion.php'; 
  
 //echo $_POST['texto'];
  
	$name = $mysqli->real_escape_string($_POST['name']);
	$flag = $mysqli->real_escape_string($_POST['flag']);
	$country = $mysqli->real_escape_string($_POST['country']);
	$typeship = $mysqli->real_escape_string($_POST['typeship']);
	$maker = $mysqli->real_escape_string($_POST['maker']);
	$imo = $mysqli->real_escape_string($_POST['imo']);
	$mmsi = $mysqli->real_escape_string($_POST['mmsi']);
	$callsign = $mysqli->real_escape_string($_POST['callsign']);
	$size = $mysqli->real_escape_string($_POST['size']);
	$draught = $mysqli->real_escape_string($_POST['draught']);
	$year = $mysqli->real_escape_string($_POST['year']);
	$userModif = $mysqli->real_escape_string($_POST['userModif']);

	$archivo1 = $_FILES["imagen"]["name"];  

	//var_dump($_POST);
	//echo "</br></br></br></br>";
	//var_dump($_FILES);

  /* booleana graba archivo db con dos sql diferentes  */


$sql = "INSERT INTO databaseship (nameS, flag, country, imo, mmsi, callsign, size, draught, yearS, typeship, maker, imagen, userModif) VALUES ('$name','$flag','$country','$imo','$mmsi','$callsign','$size','$draught','$year','$typeship','$maker','$archivo1','$userModif')";

$resultado = $mysqli->query($sql);
 
  

   

  //echo " Archivo Guardado";   , 
	
	// $nombreImagenPorts = "Port-0".$id_insert."-".$imagen; 
	$nombreImagenShip = $archivo1; 

	if($_FILES["imagen"]["error"]>0){
		echo "Error al cargar archivo";	
		} else {
		
		$permitidos = array("image/jpg","image/jpeg","image/png","image/tif");
		$limite_kb = 500;
		
		if(in_array($_FILES["imagen"]["type"], $permitidos) && $_FILES["imagen"]["size"] <= $limite_kb * 1024){
			
			$ruta = '../../img/dataBaseShip/';
			
			$archivo = $ruta.$nombreImagenShip;
			
			
			if(!file_exists($archivo)){
				
				$resultado2 = @move_uploaded_file($_FILES["imagen"]["tmp_name"], $archivo);
				
				if($resultado2){
					echo "Archivo Guardado";
					} else {
					echo "Error al guardar archivo";
				}
				
				} else {
				echo "Archivo ya existe";
			}
			
			} else {
			echo "Archivo no permitido o excede el tamaño";
		}
		
	}
	
	
?>


<html lang="es">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
       	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<link rel="stylesheet" href="../css/bootstrap-theme.min.css" >

		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

	</head>
	
	<body>
		<div class="container">
			<div class="row">
				<div class="row" style="text-align:center">
				    <?php if($resultado) { 
						header("location: welcomeShips.php");
					} else { ?>
					<h3>ERROR AL GUARDAR</h3>
					<?php } ?>
					
					<a href="welcomeShips.php" class="btn btn-primary">Regresar</a>
					
				</div>
			</div>
		</div>
	</body>
</html>
