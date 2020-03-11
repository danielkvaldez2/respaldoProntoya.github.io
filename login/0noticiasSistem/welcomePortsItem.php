<?php
	     if(session_id()=="")
   {
      session_start();
   }
   if(!isset($_SESSION["id_usuario"])) header("location: ../index.php"); 

   require '../funcs/loginConexion.php';
   require '../funcs/loginFuncs.php';

      $idR = $_GET["recordid"];
	  $idUsuario = $_SESSION["id_usuario"];

	  $sql = "SELECT id, nombre FROM usuarios WHERE id = '$idUsuario'";
	  $result = $mysqli->query($sql);
	  
	  $row = $result->fetch_assoc();

 /* BUSCADOR */		
			$sql = "SELECT * FROM databaseports WHERE id = '$idR'";
			$resultado3 = $mysqli->query($sql);
 /* BUSCADOR */	
 

	  
?>

<html>
<head>
		<title>Welcome</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">	
		
	
	 
</head>
	
<body>
	<div class="container text-center">
		</br> 
  
		<button class="btn btn-info my-2 my-sm-0 mb-3 "title="Return" onclick = "window.location.href='welcomePorts.php'">  Return </button>
	 	 
		</br></br>
		<div class="shadow p-3 mb-5 bg-white rounded">		
			<nav class="navbar navbar-expand-lg navbar-light bg-light mb-3">
				<a class="navbar-brand" href="#"> <?php echo 'Bienvenid@ '.utf8_decode($row['nombre']); ?> </a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
					<?php if($_SESSION['tipo_usuario']==1) { ?>
						<li class="nav-item">
							<a class="nav-link" href="#">Administrador <span class="sr-only">(current)</span></a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="#">Petromarina Ports<span class="sr-only">(current)</span></a>
						</li>						
					<?php } ?>					
					<li class="nav-item">
						<a class="nav-link disabled" href="#">Disabled</a>
					</li>
					</ul>					
				</div>
			</nav>
		</div>
<?php if($_SESSION['tipo_usuario']==1) { ?>
		</br></br>


		<div class="shadow p-3 mb-5 bg-white rounded">
		<?php while($row = $resultado3->fetch_array(MYSQLI_ASSOC)) { ?>
		
			<div class="card-body">
				<h5 class="card-title">Port of <?php echo $row['name']; ?></h5>
				<p class="card-text"><?php echo $row['direccion']; ?></p>
			</div> 

			<div class="shadow p-3 mb-5 bg-white rounded">
			<div class="card" >
			<img src="../../img/ports/<?php echo $row['imagen']; ?>" class="card-img-top" alt="<?php echo $row['name']; ?>">
            </div> 
			</div> 
			<div class="card-body">	
				<p class="card-text"><span class="text-muted"><small>Port Authority</small> </span></p>
				<p class="card-text"><?php echo $row['portAuthority']; ?></strong></p>
			</div> 
			
			<span><img width="60px" height="40px" src="../../img/dataBaseShip/flags/<?php echo $row['flag']; ?>"> - <?php echo $row['country']; ?></span>

			<ul class="list-group list-group-flush">
		    	<li class="list-group-item"><span class="text-secondary"><small>Phone:</small></span> 
				<strong><?php echo $row['phone']; ?> </strong>
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Fax:</small></span> 
				<strong><?php echo $row['phoneFax']; ?> </strong>
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Email:</small></span> 
				<strong><?php echo $row['email']; ?></strong>
				</li>
				<li class="list-group-item">	
					<a href="mailto:<?php echo $row['email']; ?>" title= "Send Email: <?php echo $row['email']; ?>" class="btn btn-success">Send Email: </a> 
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Web Site:</small></span> 
				<strong><?php echo $row['website']; ?></strong>
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Code:</small></span> 
				<strong><?php echo $row['locode']; ?></strong>
				</li>
				<li class="list-group-item">
					<button type="button" class="btn btn-info" data-toggle="modal" data-target="#staticBackdrop">Call - <?php echo $row['name']; ?> </button> 
				 
				</li>
			
				<li class="list-group-item"><span class="text-secondary"><small>Opening:</small></span> 
				<strong><?php echo $row['opening']; ?></strong>
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Latitud:</small></span> 
				<strong><?php echo $row['coordenadasS']; ?></strong>
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Port Type:</small></span> 
				<strong><?php echo $row['portType']; ?></strong>
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Port Size:</small></span> 
				<strong><?php echo $row['portSize']; ?></strong>
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Surface:</small></span> 
				<strong><?php echo $row['surface']; ?></strong>
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Depth:</small></span> 
				<strong><?php echo $row['depth']; ?></strong>
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Docks:</small></span> 
				<strong><?php echo $row['docks']; ?></strong>
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Annual Containers:</small></span> 
				<strong><?php echo $row['annualcontainers']; ?></strong>
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Annual Tonel:</small></span> 
				<strong><?php echo $row['annualtonel']; ?></strong>
				</li>
				<li class="list-group-item"><span class="text-secondary"><small>Annual Ships:</small></span> 
				<strong><?php echo $row['annualships']; ?></strong>
				</li>
				
			
			</ul>
		</div>
			</br>  
			<?php }  ?>
			</br>

		    	<div class="sharethis-inline-share-buttons"></div>
			</br>	  

				<button class="btn btn-info my-2 my-sm-0 mb-3 "title="Return" onclick = "window.location.href='welcomePorts.php'">  Return </button>
			</div>
	</div><!-- Container -->

	</br>	</br> 

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Petromarina News</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">



      </div> 
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<script>	
	$('#myModal').on('shown.bs.modal', function () {
	$('#myInput').trigger('focus')
	})
</script>

<script type = 'text/javascript' src = 'https://platform-api.sharethis.com/js/sharethis.js#property=5e4bd4faeac6ff0012aa5888&product=inline-share-buttons' async = 'async'> </script>
	

</body>
<?php }  ?>
</html>		