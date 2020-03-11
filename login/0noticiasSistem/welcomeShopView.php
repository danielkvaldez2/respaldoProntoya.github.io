<?php
	     if(session_id()=="")
   {
      session_start();
   }
   if(!isset($_SESSION["id_usuario"])) header("location: ../index.php"); 

   require '../funcs/loginConexion.php';
   require '../funcs/loginFuncs.php';

      $idR = $_GET["id"];
	  $idUsuario = $_SESSION["id_usuario"];

	  $sql = "SELECT id, nombre FROM usuarios WHERE id = '$idUsuario'";
	  $result = $mysqli->query($sql);
	  
	  $row = $result->fetch_assoc();

 /* BUSCADOR */		
			$sql = "SELECT * FROM tbl_productos WHERE id_producto = '$idR'";
			$resultado8 = $mysqli->query($sql);
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
  
		<button class="btn btn-info my-2 my-sm-0 mb-3 "title="Return" onclick = "window.location.href='welcomeShop.php'">  Return </button>
	 	 
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
		<?php while($row = $resultado8->fetch_array(MYSQLI_ASSOC)) { ?>

			<div class="shadow p-3 mb-5 bg-white rounded"> 
				<div class="card-body">
					<img  width="340" src="../../library/public/img/productos/miniatura/Shop_Mini_<?php echo $row['strProdImagen']; ?>">
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title"> <?php echo $row['strProdNombProducto']; ?>  </h5>
				<p class="card-text"> <?php echo $row['strProdDescripcion']; ?> </p>
			</div> 
	 
			<div class="card-body">	
				<p class="card-text"><span class="text-muted"><small>Price: </small> </span>
			<strong><?php echo $row['floatProdPrecio']; ?></strong></p>
			</div> 
			<div class="card-body">	
				<p class="card-text"><span class="text-muted"><small>Marca: </small> </span>
			<strong><?php echo $row['strProdMarca']; ?></strong></p>
			</div> 
			<div class="card-body">	
				<p class="card-text"><span class="text-muted"><small>Volumen: </small> </span>
			<strong><?php echo $row['strProdVolumen']; ?></strong></p>
			</div> 
			<div class="card-body">	
				<p class="card-text"><span class="text-muted"><small>Codigo: </small> </span>
			<strong><?php echo $row['strProdCodigo']; ?></strong></p>
			</div> 
			<div class="card-body">	
				<p class="card-text"><span class="text-muted"><small>Categoria: </small> </span>
			<strong><?php echo $row['id_categProd']; ?></strong></p>
			</div> 
			<div class="card-body">	
				<p class="card-text"><span class="text-muted"><small>Sub-Categoria: </small> </span>
			<strong><?php echo $row['id_subcategProd']; ?></strong></p>
			</div> 
			<div class="card-body">	
				<p class="card-text"><span class="text-muted"><small>Oferta: </small> </span>
			<strong><?php echo $row['strOferta']; ?></strong></p>
			</div> 






		</div>
			</br>  
			<?php }  ?>
			</br>

		    	 
			</br>	  

				<button class="btn btn-info my-2 my-sm-0 mb-3 "title="Return" onclick = "window.location.href='welcomeShop.php'">  Return </button>
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