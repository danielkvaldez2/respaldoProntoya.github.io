
<?php 
include_once "conexionCarro.php";
$sql="SELECT * FROM `tbl_productos` ORDER BY strOferta DESC, id_categProd DESC" ;
$resultado = $mysqli->query($sql);   
 
 ?>
<!-- Div CARROCOMPRAS-->
<div class="verCarroCompras"> 
                    <a href="javascript:void(0);" class="btnComprarCarrito" title="VER CARRITO"><img src="img/carroCompra.png"  alt=""></a> 
    </div> 
<!-- Div CARROCOMPRAS-->  

<div class="containerShop"><!-- Div containerShop-->  

<?php while($row = $resultado->fetch_array(MYSQLI_ASSOC)) { ?>
    <?php if($row['floatProdPrecio']>1){ ?>
  
        <div class="carroContainerShop shadd">
            <div class="carroContainerShopIMG">
                <img src="carroCompras/img/productos/miniatura/Shop_Mini_<?php echo $row['strProdImagen']; ?>" class="imgGira"  alt="hry">
            </div>
            <div class="carroContainerShoptextImp" >
                <h5 ><?php echo $row['strProdDescripcion']; ?></h5>
            </div>
            <div class="importeComp">
                <span><?php echo $row['floatProdPrecio']; ?></span>  
                <a href="javascript:void(0);" class="btnComprar" id="<?php echo $row['id_producto']; ?>" title="COMPRAR"><img src="img/carroCompra.png" class="imgbtnComprar" alt=""></a> 
            </div> 
            
        </div>
   
<?php }} ?>
   

</div><!-- Div containerShop-->  

<div id="bg-windows"> 
                  <div class="bg-windows-Content "> 
                  <div class="bg-windows-Content-exit btnCerrar"><img src="img/close.png" class="dimens" alt=""></div> 
                            <div id="tabla"> </div>
                          
                  </div>
</div>