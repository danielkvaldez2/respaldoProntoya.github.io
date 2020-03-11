<?php
	
	if(session_id()=="")
	{
	   session_start();
	}
	if(!isset($_SESSION["id_usuario"])) header("location: ../index.php"); 

	require '../funcs/loginConexion.php';
  
 //echo $_POST['texto'];
 
	$strProdNombProducto = $mysqli->real_escape_string($_POST['strProdNombProducto']);
	$strProdDescripcion = $mysqli->real_escape_string($_POST['strProdDescripcion']);
	$floatProdPrecio = $mysqli->real_escape_string($_POST['floatProdPrecio']);
	$strProdMarca = $mysqli->real_escape_string($_POST['strProdMarca']);
	$strProdVolumen = $mysqli->real_escape_string($_POST['strProdVolumen']);
	$strProdCodigo = $mysqli->real_escape_string($_POST['strProdCodigo']);
	$id_categProd = $mysqli->real_escape_string($_POST['id_categProd']);
	$id_subcategProd = $mysqli->real_escape_string($_POST['id_subcategProd']);
	$strOferta = $mysqli->real_escape_string($_POST['strOferta']);
	$userModif = $mysqli->real_escape_string($_POST['userModif']);

	$archivo1 = $_FILES["imagen"]["name"]; 
//var_dump($_POST);
// echo "</br></br></br></br>";
// var_dump($_FILES);
  /* booleana graba archivo db con dos sql diferentes */

  $sql = "INSERT INTO tbl_productos(strProdNombProducto, strProdMarca, strProdVolumen, strProdDescripcion, floatProdPrecio, strProdCodigo, strProdImagen, strProdImagenThumb, id_categProd, id_subcategProd, strOferta, userModif) VALUES ('$strProdNombProducto','$strProdMarca','$strProdVolumen','$strProdDescripcion','$floatProdPrecio','$strProdCodigo','$archivo1','$archivo1','$id_categProd','$id_subcategProd','$strOferta','$userModif')";

  $resultado = $mysqli->query($sql);


  //echo " Archivo Guardado";   , 
	
  if(isset($_FILES["imagen"]) && $_FILES["imagen"] != "")
  {
	  $file = $_FILES["imagen"];
	  $nombre = $file["name"];
	  $tipo = $file["type"];
	  $ruta_provisional = $file["tmp_name"];
	  $size = $file["size"];
	  $dimensiones = getImageSize($ruta_provisional);
	  $width = $dimensiones[0];
	  $height = $dimensiones[1];
	  $carpeta = "../../library/public/img/productos/";
	   
		  $ancho = 150;
		  if ($ancho < $width) 
		  {
			  $alto = intval($height * $ancho / $width);
				  if( $tipo == 'image/jpeg' || $tipo == 'image/JPEG' || $tipo == 'image/jpg' || $tipo == 'image/JPG')
					  {
						  $viejaimagen = imagecreatefromjpeg($ruta_provisional);
						  $nuevaimagen = imagecreatetruecolor($ancho, $alto); 
						  imagecopyresampled($nuevaimagen, $viejaimagen, 0, 0, 0, 0, $ancho, $alto, $width, $height);
  
						   $name01 = "Shop_Orig_$nombre" ;
							  $name02 = "Shop_Mini_$nombre" ;
  
						  $original = $carpeta."originales/".$name01;
						  $src = $carpeta."miniatura/".$name02;
						  copy($ruta_provisional, $original); 																//imagen.jpg
						  imagejpeg($nuevaimagen, $src); 									//copia_imagen.jpg si saco el copia me muestra no guarda
					  }
					 if( $tipo == 'image/png' || $tipo == 'image/PNG')
					  {
						  $viejaimagen = imagecreatefrompng($ruta_provisional);
						  $nuevaimagen = imagecreatetruecolor($ancho, $alto);
						  imagecopyresampled($nuevaimagen, $viejaimagen, 0, 0, 0, 0, $ancho, $alto, $width, $height);
  
						   $name01 = "Shop_Orig_$nombre" ;
							  $name02 = "Shop_Mini_$nombre" ;
  
						  $original = $carpeta."originales/".$name01;
						  $src = $carpeta."miniatura/".$name02;
						  copy($ruta_provisional, $original); 																//imagen.jpg
						  imagepng($nuevaimagen, $src); 									//copia_imagen.jpg si saco el copia me muestra no guarda
					  }
		  
		 
			  
			 
  
		  }else{
			$carpeta = "../../library/public/img/productos/";
			$nombre = $_FILES["imagen"]["name"];
			$name01 = "Shop_Orig_$nombre" ;
			$name02 = "Shop_Mini_$nombre" ;
			$original = $carpeta."originales/".$name01;
			$src = $carpeta."miniatura/".$name02;
			copy($_FILES["imagen"]["tmp_name"], $original);  
			@move_uploaded_file($_FILES["imagen"]["tmp_name"], $src);
		  }
  
  }else{
			 echo "No se Guardo Archivo.";
  }


  /*
	$nombreImagenShop = $archivo1; 

	if($_FILES["imagen"]["error"]>0){
		echo "Error al cargar archivo";	
		} else {
		
		$permitidos = array("image/jpg","image/jpeg","image/png","image/tif");
		$limite_kb = 500;
		
		if(in_array($_FILES["imagen"]["type"], $permitidos) && $_FILES["imagen"]["size"] <= $limite_kb * 1024){
			
			$ruta = '../../library/public/img/productos/';
			
			$archivo = $ruta.$nombreImagenShop;
			
			
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
	*/
	
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
						header("location: welcomeShop.php");
					} else { ?>
					<h3>ERROR AL GUARDAR</h3>
					<?php } ?>
					
					<a href="welcomeShop.php" class="btn btn-primary">Regresar</a>
					
				</div>
			</div>
		</div>
	</body>
</html>
