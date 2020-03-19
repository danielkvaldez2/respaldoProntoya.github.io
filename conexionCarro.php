<?php
 $mysqli = new mysqli('localhost', 'root', '', 'prontoya');
 //$mysqli = new mysqli('localhost', 'prontoya_shop', '1205sandra', 'prontoya_shop');
	if($mysqli->connect_error){
		
		die('Error en la conexion-->' . $mysqli->connect_error);
		
  }
	
?>