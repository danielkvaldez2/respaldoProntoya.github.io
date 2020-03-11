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
	  
	  $row = $result->fetch_assoc();

 
	  
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
		<button class="btn btn-danger my-2 my-sm-0 mb-3 "title="Modif" onclick = "window.location.href='welcomePorts.php'">  Alta </button>
	 	 
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

		<form class="form-horizontal" method="POST" action="guardarPorts.php" enctype="multipart/form-data" autocomplete="off">

		<div class="shadow p-3 mb-5 bg-white rounded">

		<div class="form-group row">
	 
				<label class="col-sm-2 col-form-label" for="id_continent">Continente</label>
			<div class="col-sm-10">
				<select class="form-control" id="id_continent" name="id_continent">
					<option selected>Continente...</option>
					<option value="1">America</option>
					<option value="2">Asia</option>
					<option value="3">Europa</option>
					<option value="4">Africa</option>
					<option value="5">Oceania</option>
				</select>
			</div>
		</div>

	 
			<div class="form-group row bg-light">
				<label for="name" class="col-sm-2 col-form-label">Name:</label>
				<div class="col-sm-10">
				<input type="text" class="form-control" id="name" name="name" placeholder="name" required  >
				</div>
            </div>
			<div class="form-group row">		
				<label for="direccion" class="col-sm-2 col-form-label">Address:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="direccion" name="direccion" placeholder="direccion" required  >
				</div>
			</div>


			<div class="form-group row">
			<label for="imagen" class="col-sm-2 col-form-label">Imagen:</label>	
			<div class="col-sm-10">
				<div class="custom-file">
					<input type="file" class="custom-file-input" id="imagen" name="imagen" required>
					<label class="custom-file-label" for="imagen">Choose file...</label>
				</div>
			</div>
			</div>



			<div class="shadow p-3 mb-5 bg-white rounded">

			    <div class="card" >
				<img src="../../img/ports/longBeach.jpg"  data-src="../../img/ports/<?php echo $row['imagen']; ?>"  class="card-img-top" alt="Ups!!">
				</div> 
			
			
			
			</div> 




			<div class="form-group row">
			   <div class="form-group col-md-6"  >
			        <label for="portAuthority">Port_Authority</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="portAuthority" name="portAuthority" placeholder="portAuthority"required  >
					</div>
				</div>
				<div class="form-group col-md-6 "  >
					<span>
					<input type="file" class="form-control" id="flag" name="flag" placeholder="Flag"  >
					<input type="text" class="form-control" id="country" name="country" placeholder="Country" required >
					  </span>
				</div>
			</div>

			<div class="form-group row bg-light ">
			    <div class="form-group col-md-3 ">
				    <label for="phone">Phone</label>
					<input type="text" class="form-control" id="phone" name="phone" placeholder="phone"  >
				</div>
				<div class="form-group col-md-3 ">
				    <label for="phone">Phone Fax</label>
					<input type="text" class="form-control" id="phoneFax" name="phoneFax" placeholder="phoneFax"   >
				</div>
				<div class="form-group col-md-3">
				    <label for="phone">Email</label>
					<input type="email" class="form-control" id="email" name="email" placeholder="email"  >
				</div>
				<div class="form-group col-md-3 ">
				    <label for="phone">Web Site</label>
					<input type="text" class="form-control" id="website" name="website" placeholder="website"   >
				</div>
			</div>

			<div class="form-group row">
			    <div class="form-group col-md-3 ">
			     	<label for="phone">Code</label>
					<input type="text" class="form-control" id="locode" name="locode" placeholder="locode"   >
				</div>
			    <div class="form-group col-md-3 ">
				<label for="phone">Latitude</label>
						<input type="text" class="form-control" id="coordenadasS" name="coordenadasS" placeholder="Latitude"required >
				</div>
				<div class="form-group col-md-3 ">
			     	<label for="phone">Length</label>
					<input type="text" class="form-control" id="coordenadasW" name="coordenadasW" placeholder="Length" required  >
				</div>
				
				<div class="form-group col-md-3 ">
			     	<label for="phone">Opening</label>
					<input type="text" class="form-control" id="opening" name="opening" placeholder="opening"  >
				</div>
			</div>


			<div class="form-group row bg-light">			 
			    <div class="form-group col-md-3 ">
				<label for="phone">Port Type</label>
						<input type="text" class="form-control" id="portType" name="portType" placeholder="portType" >
				</div>
				<div class="form-group col-md-3 ">
			     	<label for="phone">Port Size</label>
					<input type="text" class="form-control" id="portSize" name="portSize" placeholder="portSize"  >
				</div>
				<div class="form-group col-md-3 ">
			     	<label for="phone">Surface</label>
					<input type="text" class="form-control" id="surface" name="surface" placeholder="surface"  >
				</div>
				<div class="form-group col-md-3 ">
			     	<label for="phone">Depth</label>
					<input type="text" class="form-control" id="depth" name="depth" placeholder="depth"   >
				</div>
			</div>


			<div class="form-group row">			 
			    <div class="form-group col-md-3 ">
				<label for="phone">Docks </label>
						<input type="text" class="form-control" id="docks" name="docks" placeholder="docks"   >
				</div>
				<div class="form-group col-md-3 ">
			     	<label for="phone">Annual Containers </label>
					<input type="text" class="form-control" id="annualcontainers" name="annualcontainers" placeholder="annualcontainers"   >
				</div>
				<div class="form-group col-md-3 ">
			     	<label for="phone">Annual Tonel</label>
					<input type="text" class="form-control" id="annualtonel" name="annualtonel" placeholder="annualtonel"   >
				</div>
				<div class="form-group col-md-3 ">
			     	<label for="phone" >Annual Ships</label>
					<input type="text" class="form-control " id="annualships" name="annualships" placeholder="annualships"  >
				</div>
			</div>
			<div class="form-group">
				<div class="form-check">
				<input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" required>
				<label class="form-check-label" for="invalidCheck3">
				   New Record by the  <?php echo 'user '.utf8_decode($row['nombre']); ?>.
				</label>
				<input type="hidden" value="<?php echo $row['nombre']; ?>" name="userAlta" id="userAlta" >
				<div class="invalid-feedback">
					You must agree before submitting.
				</div>
				</div>
			</div>
			<div class="form-group row ">	
			<button type="submit" class="btn btn-danger m-auto" title="New Record" >New Record</button>	
			</div>
			</br> 
		</form> 
		</div>
			 
			</br>
	
	   
		    	 
			</br>	  

				<button class="btn btn-info my-2 my-sm-0 mb-3 "title="Return" onclick = "window.location.href='welcomePorts.php'">  Return </button>
			</div>
	</div><!-- Container -->

	</br>	</br> 
 

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