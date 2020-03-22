<?php
if($item['precio']>1){ 
?>
        <div class="carroContainerShop shadd">
            <input type="hidden" id="id" value="<?php echo $item['id'];  ?>">
            <div class="carroContainerShopIMG">
                <img src="http://localhost/sistema/respaldoProntoya/comprasOnline/img/productos/miniatura/Shop_Mini_<?php echo $item['imagen'];  ?>" class="imgGira"  alt="Shop_Mini_<?php echo $item['imagen'];  ?>">
            </div>
            <div class="carroContainerShoptextImp" >
                <h5 ><?php echo $item['nombre'];  ?></h5>
            </div>
            <div class="importeComp">
                <span>$<?php echo $item['precio'];  ?></span>  
                <button><img src="img/carroCompra.png" class="imgbtnComprar" alt=""></button> 
            </div>          
        </div>
<?php
}
?>



