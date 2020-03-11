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

			$sql = "SELECT * FROM tbl_productos ORDER BY id_categProd ASC ";
			$resultado9 = $mysqli->query($sql);
	
 

	  
?>

<html>
	<head>
		<title>Welcome</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		

		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
		<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">

		<style>
			table.dataTable thead {
				/*background: linear-gradient(to right, #fcb045, #fd1d1d, #833ab4);*/
				background: #A0CAEB;
				color:white;
				text-align:center;
			}
			table.dataTable tfoot {
				background: #A0CAEB;
				color:white;
				text-align:center;
			}
			div.container {
				width: 80%;
			}
		</style>
	</head>
	
	<body>
		<div class="container text-center">
		</br> 
  
		<button class="btn btn-info my-2 my-sm-0 mb-3 "title="Return" onclick = "window.location.href='welcome.php'">  Return </button>
	 	 
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

	<button class="btn btn-success my-2 my-sm-0 mb-3 "title="New Regiter" onclick = "window.location.href='welcomeShopNew.php'">  New Regiter </button>

</div><!-- Container -->

<?php if($_SESSION['tipo_usuario']==1) { ?>
</br></br> 



<div class="container ">		

<table id="example" class="table table-striped table-bordered table-hover" style="width:100%">
        <thead>
            <tr class="text-center">
				
				<th  >Images</th>
				<th  >Cat</th>
				<th  >Color</th>
				<th  >Name </th>
				<th  >Name</th>
				<th  >View</th>
				<th  >Price</th>
				<th  >Modify</th>
				<th  >Delete</th>
			</tr> 
        </thead>
        <tbody>
		   
		<?php while($row = $resultado9->fetch_array(MYSQLI_ASSOC)){  
			
			if ($row['strOferta']=="1"){
			      ?>   <tr class="bg bg-warning">
			<?php	} else {
				 ?>    <tr  >	
		<?php }	?>	
				<td class="text-center"><img  height="40px" src="../../library/public/img/productos/miniatura/Shop_Mini_<?php echo $row['strProdImagen']; ?>"></td>	
				<td class="text-center"> <?php echo $row['id_categProd']; ?> </td>
				<td class="text-center">
					<div class="qg-<?php echo $row['id_categProd']; ?> bg-<?php echo $row['id_categProd']; ?>" > X </div>
				</td>
				<td class="text-left"><?php echo $row['strProdNombProducto']; ?></td>
				<td class="text-left"><?php echo $row['strProdDescripcion']; ?></td>
				<td>
					<a href="welcomeShopView.php?id=<?php echo $row['id_producto']; ?>"   title = "<?php echo $row['strProdNombProducto']; ?>" class="btn btn-info">View</a>
				</td>

				<td class="text-right" ><?php echo $row['floatProdPrecio']; ?></td>
				<td class="text-center">	<a href="welcomeShopModif.php?id=<?php echo $row['id_producto']; ?>" title="Modify">
							<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30" height="30"viewBox="0 0 172 172"
style=" fill:#000000;"><g transform=""><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#3498db"><path d="M162.2304,73.00024l-20.3304,-3.32304c-1.19024,-4.07984 -2.81736,-8.00144 -4.85384,-11.7132l11.868,-16.91448c0.95976,-1.36568 0.79464,-3.22672 -0.38528,-4.41008l-13.37816,-13.37128c-1.19368,-1.19024 -3.07192,-1.34504 -4.44104,-0.35776l-16.65992,11.97464c-3.74616,-2.07088 -7.70216,-3.7152 -11.80608,-4.90888l-3.54664,-20.24784c-0.28896,-1.64432 -1.71656,-2.84832 -3.3884,-2.84832h-18.92c-1.6856,0 -3.12352,1.2212 -3.39528,2.88616l-3.28864,20.13776c-4.128,1.1868 -8.09088,2.81392 -11.82328,4.85728l-16.6152,-11.868c-1.37256,-0.9804 -3.24048,-0.82216 -4.43416,0.36464l-13.37128,13.37128c-1.17992,1.17992 -1.34504,3.03752 -0.38528,4.4032l11.69256,16.72872c-2.0812,3.7668 -3.73928,7.75376 -4.94672,11.9024l-20.05864,3.34024c-1.65808,0.2752 -2.87584,1.71312 -2.87584,3.39184v18.92c0,1.6684 1.19712,3.096 2.838,3.3884l20.05864,3.55696c1.20056,4.13832 2.85864,8.12528 4.94672,11.9024l-11.83704,16.55672c-0.97696,1.36568 -0.82216,3.24048 0.36464,4.43416l13.37472,13.38504c1.17992,1.17992 3.04096,1.34504 4.40664,0.38528l16.7528,-11.73384c3.75992,2.06744 7.73312,3.70832 11.8508,4.89856l3.35744,20.16184c0.27176,1.65464 1.70624,2.86896 3.3884,2.86896h18.92c1.6684,0 3.096,-1.19712 3.38496,-2.838l3.5948,-20.2616c4.12456,-1.21432 8.07712,-2.86552 11.7992,-4.9364l16.8732,11.83704c1.36912,0.96664 3.22672,0.79808 4.41008,-0.38184l13.37472,-13.38504c1.19024,-1.19368 1.34504,-3.07536 0.35776,-4.44448l-12.03312,-16.70808c2.03992,-3.7152 3.66016,-7.64368 4.84008,-11.72352l20.35792,-3.57416c1.64776,-0.28896 2.84488,-1.72 2.84488,-3.3884v-18.92c0.00344,-1.6856 -1.21776,-3.12352 -2.88272,-3.39528zM86,110.08c-13.29904,0 -24.08,-10.78096 -24.08,-24.08c0,-13.29904 10.78096,-24.08 24.08,-24.08c13.29904,0 24.08,10.78096 24.08,24.08c0,13.29904 -10.78096,24.08 -24.08,24.08z"></path></g></g></g></svg>
							</a></td>
				<td class="text-center" ><a href="eliminarShop.php?id=<?php  echo $row['id_producto']; ?>"  title="Delete" onclick="return confirm('Are you sure to DELETE?');">
							<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30" height="30" viewBox="0 0 172 172"
style=" fill:#000000;"><g transform="translate(25.8,25.8) scale(0.7,0.7)"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#e74c3c"><path d="M144.48,17.2h-34.4v-6.88c0,-5.68406 -4.63594,-10.32 -10.32,-10.32h-27.52c-5.68406,0 -10.32,4.63594 -10.32,10.32v6.88h-34.4c-1.89469,0 -3.44,1.54531 -3.44,3.44c0,1.89469 1.54531,3.44 3.44,3.44h3.73563l12.41625,139.37375c0.43,4.78375 4.50156,8.54625 9.27187,8.54625h66.09906c4.77031,0 8.84187,-3.7625 9.27187,-8.54625l12.42969,-139.37375h3.73562c1.90813,0 3.44,-1.54531 3.44,-3.44c0,-1.89469 -1.53187,-3.44 -3.44,-3.44zM68.8,151.36c0,1.90813 -1.54531,3.44 -3.44,3.44c-1.89469,0 -3.44,-1.53187 -3.44,-3.44v-113.52c0,-1.89469 1.54531,-3.44 3.44,-3.44c1.89469,0 3.44,1.54531 3.44,3.44zM68.8,10.32c0,-1.89469 1.54531,-3.44 3.44,-3.44h27.52c1.89469,0 3.44,1.54531 3.44,3.44v6.88h-34.4zM89.44,151.36c0,1.90813 -1.54531,3.44 -3.44,3.44c-1.89469,0 -3.44,-1.53187 -3.44,-3.44v-113.52c0,-1.89469 1.54531,-3.44 3.44,-3.44c1.89469,0 3.44,1.54531 3.44,3.44zM110.08,151.36c0,1.90813 -1.53187,3.44 -3.44,3.44c-1.90812,0 -3.44,-1.53187 -3.44,-3.44v-113.52c0,-1.89469 1.53188,-3.44 3.44,-3.44c1.90813,0 3.44,1.54531 3.44,3.44z"></path></g></g></g></svg>
							</a></td>
			</tr>
		<?php  }  ?>
			 
        </tbody>
        <tfoot>
            <tr>
			    <th  >Images</th>
				<th  >Cat</th>
				<th  >Color</th>
				<th  >Name </th>
				<th  >Name</th>
				<th  >View</th>
				<th  >Price</th>
				<th  >Modify</th>
				<th  >Delete</th>
            </tr>
        </tfoot>
</table><!-- tabla -->


</br></br></br></br></br></br>


	</div><!-- Container -->


	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	
	<script src="https://code.jquery.com/jquery-3.3.1.js" ></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" ></script>
	<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" ></script>
	<script>
	$(document).ready(function() {
		$('#example').DataTable();
	} );
	</script>	
	
	</body>
	<?php }  ?>
 </html>		