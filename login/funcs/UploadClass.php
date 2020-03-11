<?php
 if(session_id()=="")
   {
      session_start();
   }
 
require_once "DbPdo.php"; 
require_once "helpers.php";

class UploadClass
{
	protected function _getDbh() 
	{
		return DbPdo::getInstance()->getConn(); 
	}
	/*
	guardar: metodo para guardar el nombre thumb y alt
	de la imagen en ;la tabla imagenes*/

	public function guardar($name,$thumb,$alt)
	{
		$result = null;
		$sql = "INSERT INTO `tbl_imagenes` (`name`,`thumb`,`alt`)"
		       ."VALUES (?,?,?)";

		 $stm = $this->_getDbh()->prepare($sql);
		 $stm->bindValue(1,$name, PDO::PARAM_STR);
		 $stm->bindValue(2,$thumb, PDO::PARAM_STR);
		 $stm->bindValue(3,$alt, PDO::PARAM_STR);
		 $result = $stm->execute();
		 return $result; 

  }




   public function dataBaseports01()
	 {
	 	$sql = "SELECT * FROM `databaseports` ORDER BY  `name` ASC ";
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
   }

   

    public function dataBaseports02($id)
	 {
	 	$sql = "SELECT * FROM `databaseports` WHERE `id`= $id";
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
   }





   public function dataBaseShip01()
	 {
	 	$sql = "SELECT * FROM `databaseship` ORDER BY  `name` ASC ";
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
   }





public function dataBaseShip02($id)
	 {
	 	$sql = "SELECT * FROM `databaseship` WHERE `id`= $id";
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
   }



    public function noticiasNewsLimit()
	 {
	 	$sql = "SELECT * FROM `personas`ORDER BY  `id` DESC limit 9";
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
   }





   public function noticiasNews()
	 {
	 	$sql = "SELECT * FROM `personas`ORDER BY  `id` DESC ";
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
   }

 
   public function noticiasNewsT($id)
   {
	   $sql = "SELECT * FROM `personas` WHERE `id`= $id";
	   $stm = $this->_getDbh()->prepare($sql);
	   $stm->execute();
	   return $stm->fetchAll(PDO::FETCH_ASSOC);
 }



   public function blogList()
	 {
	 	$sql = "SELECT * FROM `tbl_blog_list` ORDER BY `id_blog` ASC ";
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
   }


    public function blogListId($id)
	 {
	 	$sql = "SELECT * FROM `tbl_blog_list` WHERE `id_blog`= $id";
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
   }


   public function blogListComentId($id)
   {
	   $sql = "SELECT * FROM `tbl_blog_comment_list`  WHERE  `id_comment_id_blog`= $id ORDER BY `id_comment` DESC";
	   $stm = $this->_getDbh()->prepare($sql);
	   $stm->execute();
	   return $stm->fetchAll(PDO::FETCH_ASSOC);
   }

	public function blogListComentSave($id,$name,$email, $text, $date) 
	{
		$id_comment_id_blog=$id;
		$name_comment_blog=$name;
		$email_comment_blog=$email;
		$text_comment_blog=$text;
		$date_comment_blog= $date;
		//echo "<script> alert('quiero GUARDADO...');</script>";
		$sql="INSERT INTO `tbl_blog_comment_list` ( `id_comment_id_blog`, `name_comment_blog`, `email_comment_blog`, `text_comment_blog`, `date_comment_blog`)"
								        ." VALUES (?,?,?,?,?)";
					                $stm = $this->_getDbh()->prepare($sql);
					               
									$stm->bindParam(1,$id_comment_id_blog);
									$stm->bindParam(2,$name_comment_blog);
									$stm->bindParam(3,$email_comment_blog);
									$stm->bindParam(4,$text_comment_blog);
									$stm->bindParam(5,$date_comment_blog);
									$result = $stm->execute(); 
	     return $result;
	} 


	public function limpiarCadena($valor)
{
	$valor = str_ireplace("SELECT","",$valor);
	$valor = str_ireplace("COPY","",$valor);
	$valor = str_ireplace("DELETE","",$valor);
	$valor = str_ireplace("DROP","",$valor);
	$valor = str_ireplace("DUMP","",$valor);
	$valor = str_ireplace(" OR ","",$valor);
	$valor = str_ireplace("%","",$valor);
	$valor = str_ireplace("LIKE","",$valor);
	$valor = str_ireplace("--","",$valor);
	$valor = str_ireplace("^","",$valor);
	$valor = str_ireplace("[","",$valor);
	$valor = str_ireplace("]","",$valor);
	$valor = str_ireplace("/","",$valor);
	$valor = str_ireplace("!","",$valor);
	$valor = str_ireplace("¡","",$valor);
	$valor = str_ireplace("?","",$valor);
	$valor = str_ireplace("=","",$valor);
	$valor = str_ireplace("&","",$valor);
	return $valor;
}

   
	 public function getCategorias()
	 {
	 	$sql = "SELECT * FROM `tbl_categoriasProd`ORDER BY  `strNombCategProd` ASC ";
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
   }
   



	public function getSubCategorias()
	{
	 	$sql = "SELECT * FROM `tbl_subcategProd`ORDER BY `strNombSubCategProd` ASC ";
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
   }
   





	public function getProductos()
	{
	 	$sql = "SELECT * FROM `tbl_productos` ORDER BY `id_categProd` ASC"; //LIMIT 0,100
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
	 }





	 public function getProductos2($id)
	{
	 	$sql = "SELECT count(*) FROM `tbl_productos` WHERE `id_subcategProd`= $id";
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
	 }





    public function getProductosId($id,$inicio, $regXPag) 
     {
     	if ($id == '-5'){
     	$sql = "SELECT * FROM `tbl_productos` ORDER BY `strProdNombProducto` DESC LIMIT 0,100";   //
         }else{
        $sql = "SELECT * FROM `tbl_productos` WHERE `id_subcategProd`= $id ORDER BY `strProdNombProducto` ASC LIMIT $inicio,$regXPag";
         }
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	return $stm->fetchAll(PDO::FETCH_ASSOC);
     }







     public function codigoAleatorio()
     {
     	$string ='';
     	$posible='0123456789abcdefghijklmnopqrstuvwxyz_';
     	$i = 0;
     	while ( $i<= 10) 
     	{
     		$char = substr($posible, mt_rand(0,strlen($posible)-1),1);
     		$string .= $char;
     		$i++;
     	}
     	return $string;

     }






     public function numeroVenta()
     {
     	$numeroventa = 0;
	    $sql = "SELECT * FROM `tbl_ventas` ORDER BY  `nro_venta` DESC limit 1";
	 	$stm = $this->_getDbh()->prepare($sql);
	 	$stm->execute();
	 	$re = $stm->fetchAll(PDO::FETCH_ASSOC);

        $numeroventa=$re[0]['nro_venta'];	
		 
		if($numeroventa==0){
			$numeroventa=1;
		}else{
			$numeroventa=$numeroventa+1;
		}

     return $numeroventa;
     }




     

     public function grabaVenta($nombre,$direccion,$telefono,$horario,$correo,$ip,$lat,$long)
     {
        $result =null;
         $w=0;
        $mi_carrito=$_SESSION['carrito'];

        $Numero_venta= $this->numeroVenta();

					for ($w=0;$w<count($mi_carrito);$w++){	
									        if($mi_carrito[$w]<> NULL){	

					        $Nro_venta= $Numero_venta;
					        $Id_usuarios=0;
					     	$User_nombre= $nombre ;
					     	$User_direccion= $direccion;
					     	$User_telefono= $telefono;
					     	$User_horario= $horario;
					     	$User_correo= $correo ;

					        $Prod_id=$mi_carrito[$w]['id'] ;
					     	$Prod_imagen=$mi_carrito[$w]['imagen'];
					     	$Prod_nombre=$mi_carrito[$w]['nombre'];
					     	$Prod_codigo=$mi_carrito[$w]['codigo'];
					     	$Prod_precio=$mi_carrito[$w]['precio'];
					      	$Prod_cantidad=$mi_carrito[$w]['cantidad'];	
					    	$Prod_oferta=$mi_carrito[$w]['oferta'];
					    	$Prod_marca.=$mi_carrito[$w]['marca'];
					     	$Prod_volumen=$mi_carrito[$w]['volumen'];
					     	$Prod_descripcion=$mi_carrito[$w]['descripcion'];   

					    	$User_ip= $ip ; 
					        $User_latitud= $lat ; 
					        $User_longitud= $long ;
					     	$StrFecha=date("d-m-Y");
							$StrHora=date("H:i:s"); 	
							$StrEstado="activo";
					        $StrControl="cargar";
					      
					   
								 	$sql="INSERT INTO `tbl_ventas` ( `nro_venta`, `id_usuarios`, `user_nombre`, `user_direccion`, `user_telefono`, `user_horario`, `user_correo`, `prod_id`, `prod_imagen`, `prod_nombre`, `prod_codigo`, `prod_precio`, `prod_cantidad`, `prod_oferta`,`prod_marca`, `prod_volumen`,`prod_descripcion`,`user_ip`, `user_latitud`, `user_longitud`, `strFecha`, `strHora`, `strEstado`, `strControl`)"
								        ." VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					                $stm = $this->_getDbh()->prepare($sql);
					               
									$stm->bindParam(1,$Nro_venta);
									$stm->bindParam(2,$Id_usuarios);
									$stm->bindParam(3,$User_nombre);
									$stm->bindParam(4,$User_direccion);
									$stm->bindParam(5,$User_telefono);
									$stm->bindParam(6,$User_horario);
									$stm->bindParam(7,$User_correo);
									$stm->bindParam(8,$Prod_id);
									$stm->bindParam(9,$Prod_imagen);
									$stm->bindParam(10,$Prod_nombre);
									$stm->bindParam(11,$Prod_codigo);
									$stm->bindParam(12,$Prod_precio);
									$stm->bindParam(13,$Prod_cantidad);
									$stm->bindParam(14,$Prod_oferta);
									$stm->bindParam(15,$Prod_marca);
									$stm->bindParam(16,$Prod_volumen);
									$stm->bindParam(17,$Prod_descripcion);
									$stm->bindParam(18,$User_ip);
									$stm->bindParam(19,$User_latitud);
									$stm->bindParam(20,$User_longitud);
									$stm->bindParam(21,$StrFecha);
									$stm->bindParam(22,$StrHora);
									$stm->bindParam(23,$StrEstado);
									$stm->bindParam(24,$StrControl); 

									$result = $stm->execute(); 
					              //$result .= $w." ) ".$Nro_venta." - ".$Prod_nombre." |<br> ";
                        									    }
										}


	 

		 return $result; 
     }



 
	
} // fin class uploadClass


?>

 