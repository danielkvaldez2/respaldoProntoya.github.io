<?php

class Session{

    private $session = NULL;
    
    public function __construct($session_name){
        //session_set_cookie_params(60*60*24*2); // 2 dias
        session_set_cookie_params(60*60); // 1 hora 
        session_start();

        if(!isset($_SESSION[$session_name])){
            $_SESSION[$session_name] = NULL;
            //echo "Sesión $session_name creada";
        }
        //echo "Sesión $session_name ya existe";
        
        $this->session = $session_name;
    }

    public function setValue($value){
        $_SESSION[$this->session] = $value;
    }

    public function getValue(){
        return $_SESSION[$this->session];
    }

    

    
}

?>

