<?php

include_once 'productos.php';

if(isset($_GET['categoria'])){
    $categoria = $_GET['categoria'];
    
    if($categoria == ''){
        echo json_encode(['statuscode' => 400, 
                            'response' => 'No existe la categor&iacute;a']);    
    }else{
        $productos = new Productos();
        //$items = $productos->getItemsByCategory($categoria);
        $items = $productos->getall();
        echo json_encode(['statuscode' => 200, 
                        'items' => $items]);
    }
}else if(isset($_GET['get-item'])){
    $id = $_GET['get-item'];//mapear variable

    if($id == ''){
        echo json_encode(['statuscode' => 400, 
                            'response' => 'No hay valor para id']);    
    }else{
        $productos = new Productos(); //nuevo objeto producto
        $item = $productos->get($id);// regresa elementos por id
        echo json_encode(['statuscode' => 200, 
                        'item' => $item]);
    }
}else{
    echo json_encode(['statuscode' => 404, 
                        'response' => 'No se puede procesar la solicitud']);
}

?>