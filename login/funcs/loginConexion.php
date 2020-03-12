<?php
$mysqli = new mysqli('localhost', 'root', '', 'prontoya');
//$mysqli = new mysqli('localhost', 'petromar_supply', '1205diego', 'petromar_supply');
	if($mysqli->connect_error){
		
		die('Error en la conexion-->' . $mysqli->connect_error);
		
  }
	
?>