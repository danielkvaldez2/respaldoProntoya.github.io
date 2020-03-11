<?php
	     if(session_id()=="")
   {
      session_start();
   }
   if(!isset($_SESSION["id_usuario"])) header("location: ../index.php"); 

   require '../funcs/loginConexion.php';
   require '../funcs/loginFuncs.php';
 
	  $idUsuario = $_SESSION["id_usuario"];

	  $sql = "SELECT id, nombre FROM usuarios WHERE id = '$idUsuario'";
	  $result = $mysqli->query($sql);
	  
	  $rowUser = $result->fetch_assoc();

 

	  
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
  
		<button class="btn btn-info my-2 my-sm-0 mb-3 "title="Return" onclick = "window.location.href='welcomeShips.php'">  Return </button>
		<button class="btn btn-danger my-2 my-sm-0 mb-3 "title="Return" onclick = "window.location.href='welcomeShips.php'">  Modif </button>
		</br></br>
		<div class="shadow p-3 mb-5 bg-white rounded">		
			<nav class="navbar navbar-expand-lg navbar-light bg-light mb-3">
				<a class="navbar-brand" href="#"> <?php echo 'Bienvenid@ '.utf8_decode($rowUser['nombre']); ?> </a>
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

		<form class="form-horizontal" method="POST" action="guardarShips.php" enctype="multipart/form-data" autocomplete="off">

		<div class="shadow p-3 mb-5 bg-white rounded">
	 
 

			<div class="shadow p-3 mb-5 bg-white rounded">

			<h5 class="card-title"> New Ship </h5>
				<div class="card-body">
					<img width="330" src="../../img/dataBaseShip/901.jpg">
				</div>
				<div class="form-group row">
				<label for="imagen" class="col-sm-2 col-form-label">Imagen:</label>	
				<div class="col-sm-10">
					<div class="custom-file">
						<input type="file" class="custom-file-input" id="imagen" name="imagen" >
						<label class="custom-file-label" for="imagen">Choose file...</label>
					</div>
				</div>
				</div>
			</div>

			<div class="form-group row bg-light ">
			    <div class="form-group col-md-4 ">	    
				</div>
				<div class="form-group col-md-4 "  >
				    <label for="name">Name Ship</label>
					<input type="text" class="form-control" id="name" name="name" placeholder="Name"style="text-align:center; font-size: 2em;" >
				</div>
				<div class="form-group col-md-4 ">			     
				</div>
			</div>

			<div class="form-group row  ">
			    <div class="form-group col-md-3"  >
					 
					<img width="120px" height="80px"class="shadow p-1 mb-5 bg-white rounded" src="../../img/dataBaseShip/flags/Usa.jpg"> 
					 
				</div>
				<div class="form-group col-md-3 ">
				    <label for="flag">Flag</label>
					<input type="text"style="text-align:center; font-size: 1.2em;"  class="form-control" id="flag" name="flag" placeholder="Flag"  >
				</div>
				<div class="form-group col-md-6 ">
				    <label for="country">Country  </label>
					<input type="text" style="text-align:center; font-size: 1.2em;"  class="form-control" id="country" name="country" placeholder="Country"  >
				</div>
			</div>

			<div class="form-group row bg-light ">
				<div class="form-group col-md-4 "  >
				    <label for="typeship">Type Ship</label>
					<input type="text" class="form-control" id="typeship" name="typeship" placeholder="Type Ship"style="text-align:center; font-size: 1.5em;"   >
				</div>
				<div class="form-group col-md-8 ">		
			     	<label for="maker">Maker</label>
					<input type="text" class="form-control" id="maker" name="maker" placeholder="Maker  "style="text-align:center; font-size: 1.5em;"   >	     
				</div>
			</div>

			<div class="form-group row  ">
				<div class="form-group col-md-3 ">
				    <label for="imo">IMO</label>
					<input type="text"style="text-align:center; font-size: 1.2em;"  class="form-control" id="imo" name="imo" placeholder="IMO"  >
				</div>
				<div class="form-group col-md-3 ">
				    <label for="mmsi">MMSI  </label>
					<input type="text" style="text-align:center; font-size: 1.2em;"  class="form-control" id="mmsi" name="mmsi" placeholder="MMSI" >
				</div>
				<div class="form-group col-md-3 ">
				    <label for="callsign"  class="col-sm-2 col-form-label">Callsign</label>
					<input type="text"style="text-align:center; font-size: 1.2em;"  class="form-control" id="callsign" name="callsign" placeholder="Callsign"  >
				</div>
				<div class="form-group col-md-3 ">
				    <label for="size">Size  </label>
					<input type="text" style="text-align:center; font-size: 1.2em;"  class="form-control" id="size" name="size" placeholder="Size" >
				</div>
			</div>


			<div class="form-group row bg-light ">
				<div class="form-group col-md-3 ">
				</div>
				<div class="form-group col-md-3 ">
				    <label for="draught">Draught  </label>
					<input type="text" style="text-align:center; font-size: 1.2em;"  class="form-control" id="draught" name="draught" placeholder="Draught"  >
				</div>
				<div class="form-group col-md-3 ">
				    <label for="year"  class="col-sm-2 col-form-label">Year</label>
					<input type="text"style="text-align:center; font-size: 1.2em;"  class="form-control" id="year" name="year" placeholder="Year" >
				</div>
				<div class="form-group col-md-3 ">
				</div>
			</div>




		    <div class="form-group">
				<div class="form-check">
				<input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" required>
				<label class="form-check-label" for="invalidCheck3">
				    New Record by the <?php echo 'user '.utf8_decode($rowUser['nombre']); ?>.
				</label>
				<input type="hidden" value="<?php echo $rowUser['nombre']; ?>" name="userModif" id="userModif" >
				

				<div class="invalid-feedback">
					You must agree before submitting.
				</div>
				</div>
			</div>

			<div class="form-group row ">	
			<button type="submit" class="btn btn-success m-auto" title="New Record" >New Record</button>	
			</div>
	
		</div>
			</br>  


		 
			</br>

		  </form>  	 
			</br>	  

				<button class="btn btn-info my-2 my-sm-0 mb-3 "title="Return" onclick = "window.location.href='welcomeShips.php'">  Return </button>
			</div>
	</div><!-- Container -->

	</br>	</br> 
	<?php }  ?>

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

</html>		