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
   
   $rowUser = $result->fetch_assoc(); 

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
		

		<style type="text/css">

	body {
	margin: 10px auto;
	text-align:center;
	font-family: 'Oswald', sans-serif;
	font-size: 1em;
	font-weight: bold;
	}

	img {width: 100%}

	.thumbnail {
	width: 371px;
	margin: 0 auto;
	margin-bottom: 10px;
	}
	#respuesta {
	position: relative;
	}
	#respuesta a {
	position: absolute;
	bottom: 5px;
	left: 5px;
	right: 5px;
	display: none;
	}
	#file-info { 
	width: 171px;
	display: none;
	}

	input[type=file] {
	position: absolute;
	visibility: hidden;
	width: 0;
	z-index: -9999;
	}
	#file-save {
	width: 171px;
	}
	.btn1{

	padding: 10px;
	margin: 10px auto;
	display: block;
	border-radius: 10px;
	text-align: center;
	text-decoration: none;
	overflow: hidden;
	box-sizing:border-box;
	}
	.btn1:hover {box-shadow:0.1em 0.2em 0.15em rgba(0,0,0,.5)}
	.warning {background: #EF981D;color:white;border: thin solid #C0C0C0;}
	.warning:hover {background: #F0AD4E;color:white;text-shadow:0.15em 0.10em 0.15em rgba(0,0,0,.5);cursor:pointer;}
	.success {background:#419341 ;color:white;border: thin solid #C0C0C0}
	.success:hover {background:#4CAE4C ;color:white;text-shadow:0.15em 0.10em 0.15em rgba(0,0,0,.5);cursor:pointer;}
	.successh {background:#A5FC77 ;color:white;text-shadow:0.1em 0.2em 0.15em rgba(0,0,0,.5);cursor:pointer;}
	.danger {background:#D4332D;color:white;border: thin solid #C0C0C0}
	.danger:hover {background:#D43F3A  ;color:white;text-shadow:0.15em 0.10em 0.15em rgba(0,0,0,.5);cursor:pointer;}
	.default {background:#C4E7F7;color:white;border: thin solid #C0C0C0}
	.default:hover {background:#D2EBF7  ;color:white;text-shadow:0.15em 0.10em 0.15em rgba(0,0,0,.5);cursor:pointer;}
</style>	
	 


	 
</head>
	
<body>
	<div class="container text-center"> 
		</br> 
  
		<button class="btn btn-info my-2 my-sm-0 mb-3 "title="Return" onclick = "window.location.href='welcomeShop.php'">  Return </button>
		<button class="btn btn-danger my-2 my-sm-0 mb-3 "title="Return" onclick = "window.location.href='welcomeShop.php'">  Modif </button>
	 	 
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

	<form class="form-horizontal" method="POST" action="updateShops.php" enctype="multipart/form-data" autocomplete="off">

		<div class="shadow p-3 mb-5 bg-white rounded">
		<?php while($row = $resultado8->fetch_array(MYSQLI_ASSOC)) { ?>

			<input type="hidden" value="<?php echo $row['id_producto']; ?>" name="id" id="id" >


			<div class="shadow p-3 mb-5 bg-white rounded">
			
			    <div id="respuesta" class="thumbnail">  <!-- preview * respuestao -->
					<a href="#" id="file-select" class="btn1 default" title="Seleccionar Imagen JPEG - PNG">+ Seleccionar Imagen</a>
					<img src="../../library/public/img/productos/miniatura/Shop_Mini_<?php echo $row['strProdImagen']; ?>"/>
				</div>
				<span  id="file-info" class="btn1 default">No hay archivo aún</span>

				<form method="post" id="formImagen" name="formImagen" enctype="multipart/form-data"> <!-- file-submit * formulario1 -->
					<input type="file" id="imagen" name="imagen" />
				</form>	
				
				
					
 
			 
			</div>

			<div class="shadow p-3 mb-5 bg-white rounded">

			<div class="form-group row bg-light ">
			    <div class="form-group col-md-6 ">
				    <label for="strProdNombProducto">Name Product</label>
					<input type="text" class="form-control" id="strProdNombProducto" name="strProdNombProducto" placeholder="Name Product" value="<?php echo $row['strProdNombProducto']; ?>" >
				</div>
				<div class="form-group col-md-6 ">
				    <label for="strProdDescripcion">Nombre Producto</label>
					<input type="text" class="form-control" id="strProdDescripcion" name="strProdDescripcion" placeholder="Nombre Producto" value="<?php echo $row['strProdDescripcion']; ?>" >
				</div>
				
			</div>

			<div class="form-group row  ">
			    <div class="form-group col-md-4 ">
				    <label for="floatProdPrecio">Price</label>
					<input type="text" class="form-control" id="floatProdPrecio" name="floatProdPrecio" placeholder="Price" value="<?php echo $row['floatProdPrecio']; ?>" >
				</div>
				<div class="form-group col-md-4 ">
				    <label for="strProdMarca"> BrandProduct </label>
					<input type="text" class="form-control" id="strProdMarca" name="strProdMarca" placeholder="Product Brand" value="<?php echo $row['strProdMarca']; ?>" >
				</div>
				<div class="form-group col-md-4">
				    <label for="strProdVolumen">Volumen</label>
					<input type="text" class="form-control" id="strProdVolumen" name="strProdVolumen" placeholder="Volumen" value="<?php echo $row['strProdVolumen']; ?>" >
				</div>
			</div>

			<div class="form-group row bg-light ">
			    <div class="form-group col-md-3 ">
				    <label for="strProdCodigo">Codigo</label>
					<input type="text" class="form-control" id="strProdCodigo" name="strProdCodigo" placeholder="Codigo" value="<?php echo $row['strProdCodigo']; ?>" >
				</div>
				<div class="form-group col-md-3 ">
				    <label for="id_categProd">Categ Prod</label>
					<input type="text" class="form-control" id="id_categProd" name="id_categProd" placeholder="Categ Prod" value="<?php echo $row['id_categProd']; ?>" >
				</div>
				<div class="form-group col-md-3">
				    <label for="id_subcategProd">Sub Categ Prod</label>
					<input type="text" class="form-control" id="id_subcategProd" name="id_subcategProd" placeholder="subcategProd" value="<?php echo $row['id_subcategProd']; ?>" >
				</div>
				<div class="form-group col-md-3 ">
				    <label for="strOferta">Oferta</label>
					<input type="text" class="form-control" id="strOferta" name="strOferta" placeholder="Oferta" value="<?php echo $row['strOferta']; ?>" >
				</div>
			</div>



			</br> 

			<div class="form-group">
				<div class="form-check">
				<input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" required>
				<label class="form-check-label" for="invalidCheck3">
				    Modifications by the <?php echo 'user '.utf8_decode($rowUser['nombre']); ?>.
				</label>
				<input type="hidden" value="<?php echo $rowUser['nombre']; ?>" name="userModif" id="userModif" >
				

				<div class="invalid-feedback">
					You must agree before submitting.
				</div>
				</div>
			</div>

			<div class="form-group row ">	
			<button type="submit" class="btn btn-danger m-auto" title="Modif" >Modif</button>	
			</div>



		</div>




		</div>
			 
			<?php }  ?>
			</br>
    </form>
		    	 
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


<script type="text/javascript" src="../../js/jquery-3.4.1.min.js"></script>

<!--<link rel='stylesheet' type='text/css' href='css/bootstrap.min.css' />-->
<script>
$(document).ready(function() {
   var formData;//variable global
		$('#respuesta').hover(
			function() {
				$(this).find('a').fadeIn();
			}, function() {
				$(this).find('a').fadeOut();
		});


		$('#file-select').on('click', function (e) {
			 e.preventDefault();		   
			 $('#imagen').click();
		});


		$('input[type=file]').change(function (e) {
			     var formData = new FormData();
				 formData.append('archivo',document.getElementById('formImagen'));

				//	formData = new FormData(document.getElementById("formulario1"));//cargo variable global
					var file = (this.files[0].name).toString(); //muestra nombre
					var reader = new FileReader();              //muestra imagen
					$('#file-info').css('display','block');  
					$('#file-info').text('');
					$('#file-info').text(file);
					reader.onload = function (e) { $('#respuesta img').attr('src', e.target.result); }  // coloca imagen
					reader.readAsDataURL(this.files[0]);
	   });	 

	 
});

</script>

</body>
<?php }  ?>
</html>		