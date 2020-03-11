

<div id="menu">
	<div id='cssmenu'>
	 
		<ul>
		   <li><a href='index.php' title="Inicio"><span>Imprenta Oriente</span><span style="font-size:16px;">Almanaques de Taco 2015</span></a></li>
		                    <li class='has-sub'><a href='#' title="Varios de Felpa"><span>Varios Capilla</span></a>
		      <ul>
		         <li><a href= "productos.php?recordID='FEL'&recordTID=Felpa-Capilla" class="fade" title="Felpa Capilla" ><span>Felpa Capilla</span></a></li> 
		         <li><a href="productos.php?recordID='FEP'&recordTID=Felpa-Rectangulo-Parado " class="fade" title="Felpa Rectangulo Parado "><span>Felpa Rectangulo Parado</span></a></li>
		         <li><a href="productos.php?recordID='FEA'&recordTID='elpa-Rectangulo-Apaisado" class="fade" title="Felpa Rectangulo Apaisado"><span>Felpa Rectangulo Apaisado</span></a></li>
		         <li class='last'><a href="productos.php?recordID='CAC'&recordTID=Capilla-Chica "  class="fade" title="Capilla Chica "><span>Capilla Chica</span></a></li>
		     </ul>
		   </li>
		   <li><a href= "productos.php?recordID='PER'&recordTID=Personalizados " class="fade" title="PERSONALIZADOS"><span>Personalizados</span></a></li>
		   <li><a href= "productos.php?recordID='NOV'&recordTID=Otros Productos "class="fade" title="Otros Productos"><span>Otros Productos</span></a></li>    
		
		   <li><a href= "productos.php?recordID='CAG'&recordTID=Capilla-Gaucha "  class="fade" title="Capilla Gaucha "><span>Capilla Gaucha</span></a></li>
		   <li class='has-sub'><a href='#'><span>Tacos y Mensuales</span></a>
		      <ul>
		         <li><a href= "productos.php?recordID='TAC'&recordTID=Tacos " class="fade" title="Tacos "><span>Tacos</span></a></li>
		         <li class='last'><a href= "productos.php?recordID='MEN'&recordTID=Mensuales "class="fade" title="Mensuales "><span>Mensuales</span></a></li>
             </ul>
		   </li>


		   <li class='has-sub'><a href='#'><span>TODOS Nuestros Productos</span></a>
		      <ul>
		         <li><a href='productosTodos.php' title="Visualizaci&oacute;n Productos" ><span>Visualizaci&oacute;n Productos</span></a></li>
		         <li><a href='mostrarProductos.php' title="Impresi&oacute;n Productos PDF"  target='_blank'><span>Impresi&oacute;n Productos PDF</span></a></li>
		         <li class='last'><a href='mostrarProductos.php' title="Descarga en PDF"  target='_blank'><span>Descarga en PDF</span></a></li>
		      </ul>
		   </li>

		   <li><a href='contacto.php'  ><span>Contactanos</span></a></li>

		   <li class='has-sub'><a href='#'><span>Login...</span></a>
		      <ul>
		        <!-- <li><a href='#' ><span>Administraci&oacute;n...</span></a></li>
		         <li><a href='#' ><span>Visitantes...</span></a></li>-->
		         <li><a  class="fancybox" href="#inicioSession" title="Iniciar Sessión"><i class="iconw icon-user"></i><span>Iniciar Sesión</span></a></li>
		         <li class='last'><a  class="fancybox" href="#registrarse" title="Registrarse"><i class="iconw icon-pencil"></i><span> Registrarse</span></a></li>
		      </ul>
		   </li>
		</ul>
	</div><!-- div menu      usuarios_pidodatos.php      -->
</div><!-- div cssmenu -->

	







<div style="display: none;"><!-- ********  *******   display none  ******************************************************* *-->
			<div id="inicioSession" style="width:400px;height:300px;overflow:auto;">
				<form action="procesosUsuarios.php" method="post" enctype="multipart/form-data" id="formUsuario" name="formUsuario"  >
					
							<label for ="strUsuario">Usuario:</label>

							<input name="strUsuario" type="text" onkeypress="return soloLetras(event)" placeholder="Avatar - Usuario"  title="Ingrese el nombre de Usuario"><br>
							
							<label for ="strPass">Contraseña:</label>

							<input name="strPass" type="password" onkeypress="return soloLetras(event)" placeholder="Ingrese su Contraseña" title="Ingrese su Contraseña"><br>
                           <input type="hidden" name="procesosUsuarios" value="logueo" />
						<br><br>
                      <button type="button" class="buttonx grande azul" style="float:right;" onclick="validar_logueo();"title="Ingresar"><span><i class="icon icon-mail3"></i> Ingresar </span></button>
  
                      <a  class="fancybox" href="#restablecer"  style="float:left;"  title="Olvide Contraseña"><i class="iconw icon-pencil"></i><span>Olvide Contraseña?</span></a>            
                  
					<br><br> <p style="font-size: 12px;">Si no sos Usuario, REGISTRATE.-</p>
				</form>
			</div>
</div><!-- ********  *******   display none  ********  window.location='Restablecer.php';    *************************** *-->

<div style="display: none;"><!-- ********  *******   display none  ***************************************************** *-->
			<div id="registrarse" style="width:400px;height:550px;overflow:auto;">
			<form action="procesosUsuarios.php" method="post" enctype="multipart/form-data" id="formRegistro" name="formRegistro"  >
			 	<label for ="nombre">Nombre:</label>
				<input name="nombre" type="text" onkeypress="return soloLetras(event)" placeholder="Ingrese su Nombre" title="Ingrese su Nombre">
				<label for ="correo">E-mail:</label>
				<input name="correo" type="email" onkeypress="return soloCorreo(event)" placeholder="Ingrese su E-mail" title="Ingrese su E-mail" >
				<label for ="user">Usuario:</label>
				<input name="user" type="text"onkeypress="return soloLetras(event)" placeholder="Avatar - Usuario"  title="Ingrese el nombre de Usuario con el cual ser&aacute; Identificado">
				<label for ="pass">Contraseña:</label>
				<input name="pass" type="password" onkeypress="return soloLetras(event)"placeholder="Ingrese su Contraseña" title="Ingrese su Contraseña">
				<label for ="pass_1"> R-Contraseña:</label>
				<input name="pass_1" type="password" onkeypress="return soloLetras(event)" placeholder="Confirme su Contraseña" title="Confirme su Contraseña">
					<input type="hidden" name="grabar" value="si" />
					<input type="hidden" name="id_perfil_user" value='2' />
					<input type="hidden" name="estado" value="no_activo" />
		            <input type="hidden" name="procesosUsuarios" value="registrar" />
				<br><br>
				 <button type="button" class="buttonx grande azul" style="float:right;"  onclick="valida_registro();"title="Registrarse"><span><i class="icon icon-mail3"></i> Registrarse </span></button>


			</form>
			
			<br/><br /><br />
			 
			<p style="font-size:14px;"><b> IMPORTANTE </b> Te enviaremos una confirmación a tu casilla de correo electrónico,<br> 
			Tenés 7 días para activar tu usuario.<br>  <b>www.almanaquesdetaco.com.ar</b></p>
     </div>
</div><!-- ********  *******   display none  **************************************************************************** *-->

<div style="display: none;"><!-- ********  *******   display none  ******************************************************** *-->
			<div id="restablecer" style="width:400px;height:400px;overflow:auto;">
			<hr>
				<p style="font-size: 16px;font-style: italic;line-height: 120%;"><b>Me olvidé mi contraseña</b><br><br>
				Por favor, ingresá tu <b>Nombre de Usuario.</b> <br>
				Te enviaremos una nueva <b> contraseña</b><br> para que podás ingresar en tu cuenta.</p>
				<br><br>
				<form action="procesosUsuarios.php" method="post" enctype="multipart/form-data" id="formRestablecer" name="formRestablecer"  >
					<label for ="strUsuario">Ingrese Nombre de Usuario:</label><br>
					<input name="strUsuario" type="text" onkeypress="return soloLetras(event)" placeholder="Avatar - Usuario"  title="Ingrese el nombre de Usuario" size="40"><br>
				    <input type="hidden" name="resta" value="si">
					 <BR><BR>
					   <input type="hidden" name="procesosUsuarios" value="restablecer" />
					<button type="button" class="buttonx grande azul" style="float:right;" class="fancybox"  onclick="validar_Restablecer();"title="Restablecer"><span><i class="icon icon-mail3"></i> Restablecer </span></button>
				
				</form>
				<hr>
			</div>
</div><!-- *****************************  *******   display none  ****************************************************** *-->