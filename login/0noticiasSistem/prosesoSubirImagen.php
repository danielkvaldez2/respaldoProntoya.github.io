<?php
//echo "llegue prosesoSubirImagen.php  ver 1";
if(isset($_FILES["file"]) && $_FILES["file"] != "")
{
	$file = $_FILES["file"];
	$nombre = $file["name"];
	$tipo = $file["type"];
	$ruta_provisional = $file["tmp_name"];
	$size = $file["size"];
	$dimensiones = getImageSize($ruta_provisional);
	$width = $dimensiones[0];
	$height = $dimensiones[1];
	$carpeta = "img/productos/";
	 
	    $ancho = 150;
	    if ($ancho < $width) 
	    {
	    	$alto = intval($height * $ancho / $width);
	    		if( $tipo == 'image/jpeg' || $tipo == 'image/JPEG' || $tipo == 'image/jpg' || $tipo == 'image/JPG')
		    		{
			    		$viejaimagen = imagecreatefromjpeg($ruta_provisional);
			        	$nuevaimagen = imagecreatetruecolor($ancho, $alto); 
			        	imagecopyresampled($nuevaimagen, $viejaimagen, 0, 0, 0, 0, $ancho, $alto, $width, $height);

			        	 $name01 = "01_Orig_$nombre" ;
		           		 $name02 = "01_Mini_$nombre" ;

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

			        	 $name01 = "01_Orig_$nombre" ;
		           		 $name02 = "01_Mini_$nombre" ;

			        	$original = $carpeta."originales/".$name01;
			        	$src = $carpeta."miniatura/".$name02;
			        	copy($ruta_provisional, $original); 																//imagen.jpg
			        	imagepng($nuevaimagen, $src); 									//copia_imagen.jpg si saco el copia me muestra no guarda
		            }
        
       
	       sleep(2);
	       echo "<img src='$src'>";

	    }else{
	       echo "Elija otra Imagen";
	    }

}else{
	       echo "No se Guardo Archivo.";
}
//echo "llegue prosesoSubirImagen.php  ver 1";
?>