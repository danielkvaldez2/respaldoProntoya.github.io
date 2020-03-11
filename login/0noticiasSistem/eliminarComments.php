<?php
	
	if(session_id()=="")
	{
		session_start();
	 }
	 if(!isset($_SESSION["id_usuario"])) header("location: ../index.php"); 
	 if($_SESSION['tipo_usuario']==1) {
	 require '../funcs/loginConexion.php';



	$id = $_GET['id'];
	
	$sql = "DELETE FROM tbl_blog_comment_list WHERE id_comment = '$id'";
	$resultado = $mysqli->query($sql);
	
	/*eliminarDir('files/'.$id);
	
	function eliminarDir($carpeta)
	{
		foreach(glob($carpeta . "/*") as $archivos_carpeta)
		{
			if (is_dir($archivos_carpeta))
			{
				eliminarDir($archivos_carpeta);
			}
			else
			{
				unlink($archivos_carpeta);
			}
		}
		rmdir($carpeta);
	} */
	
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
					header("location: welcomeComments.php");
			      } else { ?>
				<h3>ERROR AL ELIMINAR</h3>
				<?php } ?>
				
				<a href="welcomeComments.php" class="btn btn-primary">Regresar</a>
				
				</div>
			</div>
		</div>
	</body>
</html>
<?php } 
      else  header("location: ../index.php"); 
?>
