<!DOCTYPE html>
<html lang="en"> 
<head>
<?php require_once "head.php"; ?> 
</head> 
<body>
<?php require_once "menu.php"; ?>
<!-- Div CARROCOMPRAS-->
<div class="verCarroCompras"> 
                     <p class="btn-carrito"></p>
                    <a href="javascript:void(0);" class="btnComprarCarrito btn-carrito2" title="VER CARRITO"> <img src="img/carroCompra.png"  alt=""></a> 
                     
    </div> 
<!-- Div CARROCOMPRAS-->  
</br>
<div class="container"> 
    <?php 
      require_once "separadorCompras.php"; 
    ?>
      <div class="containerShop"><!-- Div containerShop-->  
      <?php    
            $response = json_decode(file_get_contents('http://localhost/sistema/respaldoProntoya/comprasOnline/api/productos/api-productos.php?categoria=1'), true);
            if($response['statuscode'] == 200){
                foreach($response['items'] as $item){
                    include('comprasOnline/layout/items.php');
                }
            }else{
                echo $response['response'];
            }
      ?>
      </div ><!-- Div containerShop--> 
      <?php 
      require_once "separadorFooter.php";
    ?>    
</div>  
<div id="bg-windows"> 
                  <div class="bg-windows-Content "> 
                  <div class="bg-windows-Content-exit btnCerrar"><img src="img/close.png" class="dimens" alt=""></div> 
                            <div id="tabla"> </div>
                          
                  </div>
</div>
</br> </br> </br></br>
<?php require_once "script.php"; ?>
</body>
</html>