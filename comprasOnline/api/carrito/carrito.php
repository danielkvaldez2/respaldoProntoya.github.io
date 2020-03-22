<?php
include_once '../../lib/session.php';

class Carrito extends Session{

    function __construct(){
        parent::__construct('carrito');
    }

    public function load(){
        if($this->getValue() == NULL){
            return '[]';
        }
        return $this->getValue();
    }

    public function add($id){
        if($this->getValue() == NULL){
            $items = [];
        }else{
            $items = json_decode($this->getValue(), 1);
            for($i=0; $i<sizeof($items); $i++){
                if($items[$i]['id'] == $id){
                    $items[$i]['cantidad']++;
                    $this->setValue(json_encode($items));
                    return $this->getValue();
                }
            }
        }
        //cuando card vacio o tiene un nuevo elemen
        $item = ['id' => (int)$id, 'cantidad' => 1];
        
        array_push($items, $item);
        $this->setValue(json_encode($items));
        return $this->getValue();
    }

    public function remove($id){
        if($this->getValue() == NULL){
            $items = [];
        }else{
            $items = json_decode($this->getValue(), 1);

            for($i=0; $i<sizeof($items); $i++){
                
                if($items[$i]['id'] == $id){
                    $items[$i]['cantidad']--;
                    if($items[$i]['cantidad'] == 0){
                        unset($items[$i]);             //borrar item
                        $items = array_values($items);  //ordenar indice
                    }
                    $this->setValue(json_encode($items));
                    return true;
                }
            }
        }
        
        //$item = ['id' => (int)$id, 'cantidad' => 1];
        
        //array_push($items, $item);
        //$this->setValue(json_encode($items));
        //return $this->getValue();
    }

   

}
?>