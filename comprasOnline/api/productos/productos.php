<?php
include_once '../../lib/db.php';

class Productos extends DB{

    function __construct(){
        parent::__construct();
    }

 

    public function getall(){
        $query = $this->connect()->prepare('SELECT * FROM tbl_productos ORDER BY strOferta DESC, id_categProd DESC');
        $query->execute();
        $items = [];
        
        while($row = $query->fetch(PDO::FETCH_ASSOC)){
            $item = [
                'id'        => $row['id_producto'],
                'nombre'    => $row['strProdDescripcion'],
                'precio'    => $row['floatProdPrecio'],
                'categoria' => $row['id_categProd'],
                'imagen'    => $row['strProdImagen']
                    ];
            array_push($items, $item);
        }
        return $items;
    }


     
    public function get($id){
        $query = $this->connect()->prepare('SELECT * FROM  tbl_productos WHERE id_producto = :id ');
        $query->execute(['id' => $id]);

        $row = $query->fetch();

        return [
                'id'        => $row['id_producto'],
                'nombre'    => $row['strProdDescripcion'],
                'precio'    => $row['floatProdPrecio'],
                'categoria' => $row['id_categProd'],
                'imagen'    => $row['strProdImagen']
                ];
    }

    public function getItemsByCategory($category){
        $query = $this->connect()->prepare('SELECT * FROM tbl_productos WHERE id_categProd  = :cat ');
        $query->execute(['cat' => $category]);
        $items = [];
        
        while($row = $query->fetch(PDO::FETCH_ASSOC)){
            $item = [
                'id'        => $row['id_producto'],
                'nombre'    => $row['strProdDescripcion'],
                'precio'    => $row['floatProdPrecio'],
                'categoria' => $row['id_categProd'],
                'imagen'    => $row['strProdImagen']
                    ];
            array_push($items, $item);
        }
        return $items;
    }
}

?>