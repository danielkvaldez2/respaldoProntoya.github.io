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
		$nombre = $mysqli->real_escape_string($_POST['nombre']);	
		$usuario = $mysqli->real_escape_string($_POST['usuario']);	
		$password = $mysqli->real_escape_string($_POST['password']);	
		$con_password = $mysqli->real_escape_string($_POST['con_password']);	
		$email = $mysqli->real_escape_string($_POST['email']);	
		$captcha = $mysqli->real_escape_string($_POST['g-recaptcha-response']);
		
		$activo = 0;
		$tipo_usuario = 2;
		//$secret = '6Le17tkUAAAAAGohddUQfbWYcTuPNL_LTY7I8Pf-';    ***clave servidor
		$secret = '6LdRJnUUAAAAAPDBPKoSbUc40EzAfRuAHMjJSsh1';
		
		if(!$captcha){
			$errors[] = "Por favor verifica el captcha";
		}
		
		if(isNull($nombre, $usuario, $password, $con_password, $email))
		{
			$errors[] = "Debe llenar todos los campos";
		}
		
		if(!isEmail($email))
		{
			$errors[] = "Dirección de correo inválida";
		}
		
		if(!validaPassword($password, $con_password))
		{
			$errors[] = "Las contraseñas no coinciden";
		}
		
		if(usuarioExiste($usuario))
		{
			$errors[] = "El nombre de usuario $usuario ya existe";
		}
		
		if(emailExiste($email))
		{
			$errors[] = "El correo electronico $email ya existe";
		}
		
		if(count($errors) == 0)
		{
			$response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$secret&response=$captcha");
			
			$arr = json_decode($response, TRUE);
			
			if($arr['success'])
			{
				
				$pass_hash = hashPassword($password);
				$token = generateToken();
				
				$registro = registraUsuario($usuario, $pass_hash, $nombre, $email, $activo, $token, $tipo_usuario);
				
				if($registro > 0 )
				{
				 	
           $url = 'http://localhost/sistema/petromarina2020sistema/login/0loginSistem/activar.php?id='.$registro.'&val='.$token;
           
				//	$url = 'http://'.$_SERVER["SERVER_NAME"].'/login/0loginSistem/activar.php?id='.$registro.'&val='.$token;
					
					$asunto = 'Activar Cuenta - Sistema de Usuarios';
					$cuerpo = "Estimado $nombre: <br /><br />Para continuar con el proceso de registro, es indispensable de click en la siguiente liga <a href='$url'>Activar Cuenta</a>";
					
					if(enviarEmail($email, $nombre, $asunto, $cuerpo)){
					
					echo "Para terminar el proceso de registro siga las instrucciones que le hemos enviado la direccion de correo electronico: $email";
					
					 "<br><a href='index' >Iniciar Sesion</a>";  //echo esto genera un link de accceso a login en el momento de registrarse No me parece correcto
					exit;
					
					} else {
						$errors[] = "Error al enviar Email";
					}
					
					} else {
					$errors[] = "Error al Registrar";
				}
				
				} else {
				$errors[] = 'Error al comprobar Captcha';
			}
			
		}
		
	}
	
?>
<html>
	<head>
		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=G-H00580WDRK"></script>
		<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'G-H00580WDRK');
		</script>
        <!-- Global site tag (gtag.js) - Google Analytics -->


		<title>Registro</title>
		
		<link rel="stylesheet" href="../css/bootstrap.min.css" >
		<link rel="stylesheet" href="../css/bootstrap-theme.min.css" >
		<script src="../js/bootstrap.min.js" ></script>
		<script src='https://www.google.com/recaptcha/api.js'></script>
	</head>
	
	<body>
		<div class="container">
			<div id="signupbox" style="margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">Reg&iacute;strate</div>
						<div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="../index">Iniciar Sesi&oacute;n</a></div>
					</div>  
					
					<div class="panel-body" >
						
						<form id="signupform" class="form-horizontal" role="form" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" autocomplete="off">
							
							<div id="signupalert" style="display:none" class="alert alert-danger">
								<p>Error:</p>
								<span></span>
							</div>
							
							<div class="form-group">
								<label for="nombre" class="col-md-2 control-label"></label>
								<div class="col-md-8 input-group">
								    <span class="input-group-addon" style="color:#3AB2D6;"><i class="glyphicon glyphicon-info-sign"></i></span>
									<input type="text" class="form-control" name="nombre" placeholder="Nombre" value="<?php if(isset($nombre)) echo $nombre; ?>" required >
								</div>
							</div>
							
							<div class="form-group">
								<label for="usuario" class="col-md-2 control-label"></label>
								<div class="col-md-8 input-group">
								    <span class="input-group-addon" style="color:#3AB2D6;"><i class="glyphicon glyphicon-user"></i></span>
									<input type="text" class="form-control" name="usuario" placeholder="Usuario" value="<?php if(isset($usuario)) echo $usuario; ?>" required>
								</div>
							</div>
							
							<div class="form-group">
								<label for="password" class="col-md-2 control-label"></label>
								<div class="col-md-8 input-group">
								    <span class="input-group-addon" style="color:#3AB2D6;"><i class="glyphicon glyphicon-lock "></i></span>
									<input  type="password" class="form-control" name="password" placeholder="Password" required>
									<span id="show-hide-passwd" action="hide" class="input-group-addon " style="color:#3AB2D6;"><i id="ojo"  class="glyphicon glyphicon-eye-open"></i></span>
								</div>
							</div>
							
							<div class="form-group">
								<label for="con_password" class="col-md-2 control-label"></label>
								<div class="col-md-8 input-group">
								    <span class="input-group-addon" style="color:#3AB2D6;"><i class="glyphicon glyphicon-thumbs-up"></i></span>
									<input type="password" class="form-control" name="con_password" placeholder="Confirmar Password" required>
									<span id="show-hide-rpasswd" action="hide" class="input-group-addon " style="color:#3AB2D6;"><i id="rojo" class="glyphicon glyphicon-eye-open"></i></span>
								</div>
							</div>
							
							<div class="form-group">
								<label for="email" class="col-md-2 control-label"></label>
								<div class="col-md-8 input-group">
								    <span class="input-group-addon" style="color:#3AB2D6;"><i class="glyphicon glyphicon-envelope"></i></span>
									<input type="email" class="form-control" name="email" placeholder="Email" value="<?php if(isset($email)) echo $email; ?>" required>
								</div>
							</div>
							
							<div class="form-group">
								<label for="captcha" class="col-md-2 control-label"></label>
							<!--	<div class="g-recaptcha col-md-8" 
								data-sitekey="6Le17tkUAAAAAJ_A-jyCMgK2mDWZWdMxpfXVEItC"></div> servidor-->
								<div class="g-recaptcha col-md-8" 
								data-sitekey="6LdRJnUUAAAAAAsfktrBwMWcSG5dXnfWK0C1YKbS"></div>
							</div>
							
							<div class="form-group">                                      
								<div class="col-md-offset-5 col-md-6">
									<button id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i>Registrar</button> 
								</div>
							</div>
						</form>
						<?php echo resultBlock($errors); ?>
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
			$('#show-hide-rpasswd').on('click', function(e) {
				e.preventDefault();
				var current = $(this).attr('action');
				if (current == 'hide') {
					$(this).prev().attr('type','text');
					$(this).attr('action','show');
					$('#rojo').removeClass('glyphicon-eye-open').addClass('glyphicon-eye-close');
				}
				if (current == 'show') {
					$(this).prev().attr('type','password');
					$(this).attr('action','hide');
					$('#rojo').removeClass('glyphicon-eye-close').addClass('glyphicon-eye-open');
				}
			})
		})
	</script>
</html>															