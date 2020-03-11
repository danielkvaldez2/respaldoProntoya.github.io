<?php

if(session_id()=="")
{
   session_start();
}
if(!isset($_SESSION["id_usuario"])) header("location: ../index.php"); 
if($_SESSION['tipo_usuario']==1) {
	
require '../funcs/loginConexion.php';

	
	$id = $_GET['id'];
	
	$sql = "SELECT * FROM personas WHERE id = '$id'";
	$resultado = $mysqli->query($sql);
	$row = $resultado->fetch_array(MYSQLI_ASSOC);
	
?>

	<head>

	<meta name="viewport" content="width=device-width, initial-scale=1">
       	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<link rel="stylesheet" href="../css/bootstrap-theme.min.css" >

		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

		
		<script type="text/javascript">
			$(document).ready(function() {
				$('.delete').click(function(){
					var parent = $(this).parent().attr('id');
					var service = $(this).parent().attr('data');
					var dataString = 'id='+service;
					
					$.ajax({
						type: "POST",
						url: "del_file.php",
						data: dataString,
						success: function() {			
							location.reload();
						}
					});
				});                 
			});    
		</script>
		
	</head>
	
	<body>
	<div class="container text-center">

	</br> 
	<button class="btn btn-info my-2 my-sm-0 mb-3 "title=" Modify Register" >  Modify Register </button>
		
	</br></br> 

			
      <form class="form-horizontal" method="POST" action="update.php" enctype="multipart/form-data" autocomplete="off">
      
       <div class="form-group">
					<label for="dia" class="col-sm-2 control-label">Dia</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="dia" name="dia" placeholder="dia" value="<?php echo $row['dia']; ?>" readonly>
					</div>
        </div>

        <div class="form-group">
					<label for="mes" class="col-sm-2 control-label">Mes</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="mes" name="mes" placeholder="mes" value="<?php echo $row['mes']; ?>" readonly>
					</div>
        </div>

        <div class="form-group">
					<label for="posted" class="col-sm-2 control-label">Posted by</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="posted" name="posted" placeholder="Posted by" value="<?php echo $row['posted']; ?>" required>
					</div>
        </div>
        
				<div class="form-group">
					<label for="titulo" class="col-sm-2 control-label">Titulo</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="titulo" name="titulo" placeholder="Titulo" value="<?php echo $row['titulo']; ?>" required>
					</div>
				</div>
				
				<input type="hidden" id="id" name="id" value="<?php echo $row['id']; ?>" />
				
				<div class="form-group">
					<label for="texto" class="col-sm-2 control-label">Texto</label>
					<div class="col-sm-10">

            <textarea id="texto" name="texto" rows="10" cols="100vh"><?php echo $row['texto']; ?></textarea>
					 
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="foto" class="col-sm-2 control-label">Foto</label>
					<div class="col-sm-10">
						<input type="file" class="form-control" id="foto" name="foto">
						
		
						<div data="../files/<?php echo $row['archivo']; ?>" >
						     <a href="../files/<?php echo $row['archivo']; ?>" title='Ver Archivo Adjunto'>
							       <span class='glyphicon glyphicon-picture'></span>
							</a> 
						    ../files/<?php echo $row['archivo']; ?>
							<a href='#' class='delete' title='Ver Archivo Adjunto' >
							     <span class='glyphicon glyphicon-trash' aria-hidden='true'></span>
							</a>
						</div> 
												
						<img src="../files/<?php echo $row['archivo']; ?>"  width='300' /> 
						<img src="../files/Noticias-<?php echo $row['id']; ?>-<?php echo $row['archivo']; ?>"  width='300' /> 
							
						
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<a href="welcomeNoticias.php" class="btn btn-default">Regresar</a>
						<button type="submit" class="btn btn-primary">Guardar</button>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>

<?php } 
      else  header("location: ../index.php"); 
?>