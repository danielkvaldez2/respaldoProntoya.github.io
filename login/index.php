<?php
	
	   if(session_id()=="")
   {
      session_start();
   }

	require '../login/funcs/loginConexion.php';
	require '../login/funcs/loginFuncs.php';
	$errors = array();
	
	if(!empty($_POST))
	{
	 
		$usuario = $mysqli->real_escape_string($_POST['usuario']);	
		$password = $mysqli->real_escape_string($_POST['password']);
		
	if(isNullLogin($usuario, $password))
	{
        $errors[] = "Debe llenar todos los datos" ;
	}
$errors[] = login($usuario, $password);

    }
	
?>
<html>
	<head>
		<title>Login</title>
		
		<link rel="stylesheet" href="css/bootstrap.min.css" >
		<link rel="stylesheet" href="css/bootstrap-theme.min.css" >
		<script src="js/bootstrap.min.js" ></script>}
		<style>
			#show-hide-passwd:hover{
				cursor: pointer;
			}
		</style>
	
		
	</head>
	
	<body>
		
		<div class="container">    
			<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
				<div class="panel panel-info" >
					<div class="panel-heading">
						<div class="panel-title">Iniciar Sesi&oacute;n</div>
						<div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="../login/0loginSistem/recupera">¿Se te olvid&oacute; tu contraseña?</a></div>
					</div>     
				
				<div style="padding-top:30px" class="panel-body" >
					
					<div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
					
					<form id="loginform" class="form-horizontal" role="form" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" autocomplete="off">
						
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon" style="color:#3AB2D6;"><i class="glyphicon glyphicon-user"></i></span>
							<input id="usuario" type="text" class="form-control" name="usuario" value="" placeholder="usuario o email" required> 

						</div>
						
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"  style="color:#3AB2D6;"><i class="glyphicon glyphicon-lock"></i></span>
							<input id="password" type="password" class="form-control" name="password" placeholder="password" required>
							<span id="show-hide-passwd" action="hide" class="input-group-addon " style="color:#3AB2D6;"><i id="ojo" class="glyphicon glyphicon-eye-open"></i></span>
						</div>
						
						<div style="margin-top:10px" class="form-group">
							<div class="col-sm-12 controls">
								<button id="btn-login" type="submit" class="btn btn-info">Iniciar Sesi&oacute;n</a>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-12 control">
								<div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
									No tiene una cuenta! <a href="../login/0loginSistem/registro">Registrate aquí</a>
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
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script>
		$(document).on('ready', function() {
			$('#show-hide-passwd').on('click', function(e) {
				e.preventDefault();
				var current = $(this).attr('action');
				if (current == 'hide') {
					$(this).prev().attr('type','text');
					$(this).attr('action','show');
					$('#ojo').removeClass('glyphicon-eye-open').addClass('glyphicon-eye-close');
				}
				if (current == 'show') {
					$(this).prev().attr('type','password');
					$(this).attr('action','hide');
					$('#ojo').removeClass('glyphicon-eye-close').addClass('glyphicon-eye-open');
				}
			})
		})
	</script>
</html>						