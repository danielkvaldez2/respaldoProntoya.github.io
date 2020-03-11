<?php
	
if(session_id()=="")
{
	session_start();
 }
 if(!isset($_SESSION["id_usuario"])) header("location: ../index.php"); 

 require '../funcs/loginConexion.php';
 
  
	$dia1 = $_POST['dia'];
	$mes1 =  $_POST['mes'] ;
	$posted1 =  $_POST['posted'] ;
	$titulo1 = $_POST['titulo'] ;
	$texto1 =   $_POST['texto'] ;
	$archivo11 =  $_FILES["foto"]["name"] ;

  $archivo1 = $_FILES["foto"]["name"];

    $dia = $mysqli->real_escape_string($dia1);
    $mes = $mysqli->real_escape_string($mes1);
    $posted = $mysqli->real_escape_string($posted1);
    $titulo = $mysqli->real_escape_string($titulo1);
    $texto = $mysqli->real_escape_string($texto1);
    $archivo1 = $mysqli->real_escape_string($archivo11);
   $video = "0";
   $date = date("Y-m-d H:i:s"); 
 
 
 	$sql = "INSERT INTO personas ( dia, mes, posted, titulo, texto, archivo,video,date1) VALUES ('$dia','$mes','$posted','$titulo', '$texto', '$archivo1', '$video', '$date')";
  //  echo "Archivo Guardado";
  $resultado = $mysqli->query($sql);
  $id_insert = $mysqli->insert_id;
  
  $nombreFotoNoticia = "Noticias-".$id_insert."-".$archivo1; 
  
	if($_FILES["foto"]["error"]>0){
		echo "Error al cargar archivo";	
		} else {
		
		$permitidos = array("image/jpg","image/jpeg","image/png","image/tif");
		$limite_kb = 1000;
		
		if(in_array($_FILES["foto"]["type"], $permitidos) && $_FILES["foto"]["size"] <= $limite_kb * 1024){
			
			$ruta = '../files/';
			
			$archivo = $ruta.$nombreFotoNoticia;
			
						
			if(!file_exists($archivo)){
				
				$resultado = @move_uploaded_file($_FILES["foto"]["tmp_name"], $archivo);
				
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
					<?php if($resultado) { ?>
						<h3>REGISTRO GUARDADO</h3>
						<?php } else { ?>
						<h3>ERROR AL GUARDAR</h3>
					<?php } ?>
					
					<a href="welcomeNoticias.php" class="btn btn-primary">Regresar</a>
					
				</div>
			</div>
		</div>
	</body>
</html>
