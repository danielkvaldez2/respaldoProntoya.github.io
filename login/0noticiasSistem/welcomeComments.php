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

			$sql = "SELECT * FROM tbl_blog_comment_list ORDER BY id_comment_id_blog ASC ";
			$resultado7 = $mysqli->query($sql);
	
 

	  
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


</div><!-- Container -->

<?php if($_SESSION['tipo_usuario']==1) { ?>
</br></br> 



<div class="container ">		

<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr class="text-center">
				
				<th  >Blog</th>
				<th  >Name</th>
				<th  >Text </th>
				<th  >Email</th>
				<th  >Delete</th>
			</tr>
        </thead>
        <tbody>
           
		<?php while($row = $resultado7->fetch_array(MYSQLI_ASSOC)){ ?>
			
			<tr>
				<td class="text-center" > <?php echo $row['id_comment_id_blog']; ?> </td>
				<td class="text-left"><?php echo $row['name_comment_blog']; ?></td>
				<td class="text-left"><?php echo $row['text_comment_blog']; ?></td>
				<td class="text-left"><?php echo $row['email_comment_blog']; ?></td>
				<td class="text-right" ><a href="eliminarComments.php?id=<?php  echo $row['id_comment']; ?>"  title="Delete" onclick="return confirm('Are you sure to DELETE?');">
							<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30" height="30" viewBox="0 0 172 172"
style=" fill:#000000;"><g transform="translate(25.8,25.8) scale(0.7,0.7)"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#e74c3c"><path d="M144.48,17.2h-34.4v-6.88c0,-5.68406 -4.63594,-10.32 -10.32,-10.32h-27.52c-5.68406,0 -10.32,4.63594 -10.32,10.32v6.88h-34.4c-1.89469,0 -3.44,1.54531 -3.44,3.44c0,1.89469 1.54531,3.44 3.44,3.44h3.73563l12.41625,139.37375c0.43,4.78375 4.50156,8.54625 9.27187,8.54625h66.09906c4.77031,0 8.84187,-3.7625 9.27187,-8.54625l12.42969,-139.37375h3.73562c1.90813,0 3.44,-1.54531 3.44,-3.44c0,-1.89469 -1.53187,-3.44 -3.44,-3.44zM68.8,151.36c0,1.90813 -1.54531,3.44 -3.44,3.44c-1.89469,0 -3.44,-1.53187 -3.44,-3.44v-113.52c0,-1.89469 1.54531,-3.44 3.44,-3.44c1.89469,0 3.44,1.54531 3.44,3.44zM68.8,10.32c0,-1.89469 1.54531,-3.44 3.44,-3.44h27.52c1.89469,0 3.44,1.54531 3.44,3.44v6.88h-34.4zM89.44,151.36c0,1.90813 -1.54531,3.44 -3.44,3.44c-1.89469,0 -3.44,-1.53187 -3.44,-3.44v-113.52c0,-1.89469 1.54531,-3.44 3.44,-3.44c1.89469,0 3.44,1.54531 3.44,3.44zM110.08,151.36c0,1.90813 -1.53187,3.44 -3.44,3.44c-1.90812,0 -3.44,-1.53187 -3.44,-3.44v-113.52c0,-1.89469 1.53188,-3.44 3.44,-3.44c1.90813,0 3.44,1.54531 3.44,3.44z"></path></g></g></g></svg>
							</a></td> 
			</tr>
		<?php  }  ?>
			 
        </tbody>
        <tfoot>
            <tr>
			    <th  >Blog</th>
				<th  >Name</th>
				<th  >Text </th>
				<th  >Email</th>
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