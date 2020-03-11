<?php
	
	if(session_id()=="")
	{
	   session_start();
	}
	if(!isset($_SESSION["id_usuario"])) header("location: ../index.php"); 

	require '../funcs/loginConexion.php';
  
 //echo $_POST['texto'];
 $id = $_POST['id'];
	$nameA = $mysqli->real_escape_string($_POST['name']);
	$country = $mysqli->real_escape_string($_POST['country']);
	$flag = $mysqli->real_escape_string($_FILES['flag']['name']);
	$locode = $mysqli->real_escape_string($_POST['locode']);
	$imagen = $mysqli->real_escape_string($_FILES['imagen']['name']);
	$opening = $mysqli->real_escape_string($_POST['opening']);
	$coordenadasS = $mysqli->real_escape_string($_POST['coordenadasS']);
	$coordenadasW = $mysqli->real_escape_string($_POST['coordenadasW']);
	$portAuthority = $mysqli->real_escape_string($_POST['portAuthority']);
	$direccion = $mysqli->real_escape_string($_POST['direccion']);
	$phone = $mysqli->real_escape_string($_POST['phone']);
	$phoneFax = $mysqli->real_escape_string($_POST['phoneFax']);
	$email = $mysqli->real_escape_string($_POST['email']);
	$website = $mysqli->real_escape_string($_POST['website']);	
	$portType = $mysqli->real_escape_string($_POST['portType']);
	$portSize = $mysqli->real_escape_string($_POST['portSize']);	
	$surface = $mysqli->real_escape_string($_POST['surface']);
	$depth = $mysqli->real_escape_string($_POST['depth']);
	$docks = $mysqli->real_escape_string($_POST['docks']);	
	$annualcontainers = $mysqli->real_escape_string($_POST['annualcontainers']);
	$annualtonel = $mysqli->real_escape_string($_POST['annualtonel']);
	$annualships = $mysqli->real_escape_string($_POST['annualships']);
	$userModif = $mysqli->real_escape_string($_POST['userModif']); 
	$valido = $mysqli->real_escape_string($_POST['valido']);  
	
	$archivo1 = $_FILES["imagen"]["name"]; 
	//var_dump($_POST);
	//echo "</br></br></br></br>";
	//var_dump($_FILES);
  /* booleana graba archivo db con dos sql diferentes */
  if ($archivo1 <> "") {
     $sql = "UPDATE databaseports SET name='$nameA', country='$country', imagen='$archivo1', opening='$opening', coordenadasS='$coordenadasS', coordenadasW='$coordenadasW', portAuthority='$portAuthority', direccion='$direccion', phone='$phone', phoneFax='$phoneFax', email='$email', website='$website', portType='$portType', portSize='$portSize', surface='$surface', depth='$depth', docks='$docks', annualcontainers='$annualcontainers', annualtonel='$annualtonel', annualships='$annualships', userModif='$userModif', valido='$valido' WHERE id = '$id'";
  } else {
	$sql = "UPDATE databaseports SET name='$nameA', country='$country', locode='$locode',  opening='$opening', coordenadasS='$coordenadasS', coordenadasW='$coordenadasW', portAuthority='$portAuthority', direccion='$direccion', phone='$phone', phoneFax='$phoneFax', email='$email', website='$website', portType='$portType', portSize='$portSize', surface='$surface', depth='$depth', docks='$docks', annualcontainers='$annualcontainers', annualtonel='$annualtonel', annualships='$annualships', userModif='$userModif', valido='$valido'  WHERE id = '$id'";
  }
  $resultado = $mysqli->query($sql);
  $id_insert = $id;

  if ($flag <> ""){
	$sql = "UPDATE databaseports SET flag='$flag' WHERE id = '$id'";
	$resultado = $mysqli->query($sql);	
  }

  //echo " Archivo Guardado";   , 
	
	// $nombreImagenPorts = "Port-0".$id_insert."-".$imagen; 
	$nombreImagenPorts = $imagen; 

	if($_FILES["imagen"]["error"]>0){
		echo "Error al cargar archivo";	
		} else {
		
		$permitidos = array("image/jpg","image/jpeg","image/png","image/tif");
		$limite_kb = 500;
		
		if(in_array($_FILES["imagen"]["type"], $permitidos) && $_FILES["imagen"]["size"] <= $limite_kb * 1024){
			
			$ruta = '../../img/ports/';
			
			$archivo = $ruta.$nombreImagenPorts;
			
			
			if(!file_exists($archivo)){
				
				$resultado = @move_uploaded_file($_FILES["imagen"]["tmp_name"], $archivo);
				
				if($resultado){
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
						header("location: welcomePorts.php");
					} else { ?>
					<h3>ERROR AL GUARDAR</h3>
					<?php } ?>
					
					<a href="welcomePorts.php" class="btn btn-primary">Regresar</a>
					
				</div>
			</div>
		</div>
	</body>
</html>
