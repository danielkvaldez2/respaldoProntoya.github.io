<?php

include_once 'carrito.php';

if(isset($_GET['action'])){

    $accion = $_GET['action'];
    $carrito = new Carrito();
    switch($accion){
        case 'mostrar':
        mostrar($carrito);
        break;

        case 'add':
        add($carrito);
        break;

        case 'remove':
        remove($carrito);
        break;
 
        default:
    }
}else{
    echo json_encode(['statuscode' => 404, 
                        'response' => 'No se puede procesar la solicitud']);
}








function mostrar($carrito){
    //cargar erreglo en sesion --consultar base de datos
    $itemsCarrito = json_decode($carrito->load(), 1); //llama carrito decodificar
    $fullItems = []; //info productos
    $total = 0;
    $totalItems = 0;
    foreach($itemsCarrito as $itemCarrito){
        $httpRequest = file_get_contents('http://localhost/sistema/respaldoProntoya/comprasOnline/api/productos/api-productos.php?get-item=' . $itemCarrito['id']); 
        $itemProducto = json_decode($httpRequest, 1)['item']; //decodifico
        $itemProducto['cantidad'] = $itemCarrito['cantidad'];// add cant
        $itemProducto['subtotal'] = $itemProducto['cantidad'] * $itemProducto['precio']; // add precio
        $total += $itemProducto['subtotal']; ///total
        $totalItems += $itemProducto['cantidad'];
        array_push($fullItems, $itemProducto);
    }
    $resArray = array('info' => ['count' => $totalItems, 'total' => $total] ,'items' => $fullItems);
    //array_push($fullItems, ['count' => $totalItems, 'total' => $total]);
    echo json_encode($resArray);
}













function add($carrito){
    if(isset($_GET['id'])){
        $res = $carrito->add($_GET['id']);
        echo $res;
    }else{
        // error
        echo json_encode(['statuscode'=> 404, 'response'=>'No se puede prosesar la solicitar, id vacio']);
    }
}

function remove($carrito){ 
    if(isset($_GET['id'])){
        $res = $carrito->remove($_GET['id']);
        if($res){
            echo json_encode(['statuscode' => 200]);
        }else{
            echo json_encode(['statuscode' => 400]);
        }
    }else{
        // error
        echo json_encode(['statuscode'=> 404, 'response'=>'No se puede prosesar la solicitar, id vacio']);
    }
}


 






?>