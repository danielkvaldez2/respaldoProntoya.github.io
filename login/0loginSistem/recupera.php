<?php
 
   if(session_id()=="")
   {
      session_start();
   }	
   require '../funcs/loginConexion.php';
   require '../funcs/loginFuncs.php';

$errors = array();

if(!empty($_POST))
{
	$email = $mysqli->real_escape_string($_POST['email']);	

	if(!isEmail($email))
	{
		$errors[]= "Debe ingresar un correo electronico valido";
    }
	if(emailExiste($email))
	{
		$user_id = getValor('id', 'correo', $email);
		$nombre = getValor('nombre', 'correo', $email);

		$token = generaTokenPass($user_id);

		$url = 'http://localhost/sistema/petromarina2020sistema/login/0loginSistem/cambia_pass.php?user_id='.$user_id.'&token='.$token;

		$asunto = 'Recuperar Password Sistema de Usuarios';
		$cuerpo = "Hola $nombre: <br /><br /> Se ha solicitado un reinicio de contras&ntilde;a.<br /><br /> para restaurar la contras&ntilde;a, visita la siguiente direcci&oacute;n: <a href='$url'>Cambiar Password</a>";

		if(enviarEmail($email, $nombre, $asunto, $cuerpo))
		{
			echo "Hemos enviado un correo electronico a la direcci&oacute;n $email para reestableser tu Password <br />";
			echo "<a href='../index'>Iniciar Sesion</a>";
			exit;
		}else{
			$errors[] = "Error al enviar Email";
		}
	}else {
		$errors[] = "No existe el correo electronico";
	}
}		
?>
<html>
	<head>
		<title>Recuperar Password</title>
		
		<link rel="stylesheet" href="../css/bootstrap.min.css" >
		<link rel="stylesheet" href="../css/bootstrap-theme.min.css" >
		<script src="../js/bootstrap.min.js" ></script>
		
	</head>
	
	<body>
		
		<div class="container">    
			<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
				<div class="panel panel-info" >
					<div class="panel-heading">
						<div class="panel-title">Recuperar Password</div>
						<div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="../index">Iniciar Sesi&oacute;n</a></div>
					</div>     
					
					<div style="padding-top:30px" class="panel-body" >
						
						<div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
						
						<form id="loginform" class="form-horizontal" role="form" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" autocomplete="off">
							
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon"style="color:#3AB2D6;"><i class="glyphicon glyphicon-user"></i></span>
								<input id="email" type="email" class="form-control" name="email" placeholder="email" required>                                        
							</div>
							
							<div style="margin-top:10px" class="form-group">
								<div class="col-sm-12 controls">
									<button id="btn-login" type="submit" class="btn btn-info">Enviar</a>
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-md-12 control">
									<div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
										No tiene una cuenta! <a href="registro">Registrate aquí</a>
									</div>
								</div>
							</div>    
						</form>
						<?php echo resultBlock($errors) ?> 
					</div>                     
				</div>  
			</div>
		</div>
	</body>
</html>							