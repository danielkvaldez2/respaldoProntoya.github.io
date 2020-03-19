
<?php 
include_once "conexionCarro.php";
$sql="SELECT * FROM `tbl_productos` ORDER BY strOferta DESC, id_categProd DESC" ;
$resultado = $mysqli->query($sql);   
 
 ?>
   
<div class="containerShop">

<?php while($row = $resultado->fetch_array(MYSQLI_ASSOC)) { ?>
    <?php if($row['floatProdPrecio']>1){ ?>
  
        <div class="carroContainerShop shadd">
            <div>
                <img src="carroCompras/img/productos/miniatura/Shop_Mini_<?php echo $row['strProdImagen']; ?>"   alt="hry">
            </div>
            <div >
                <h5 ><?php echo $row['strProdDescripcion']; ?></h5>
                <p  ><?php echo $row['floatProdPrecio']; ?></p>
                <span class="btn btn-info"  ><?php echo $row['id_categProd']; ?></span>
                <a href="javascript:void(0);" class="btn btn-danger">comprar</a>  
            </div>
        </div>
   
<?php }} ?>
   

</div>