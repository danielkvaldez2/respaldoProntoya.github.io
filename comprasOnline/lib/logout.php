<?php

   session_start();
   var_dump($_SESSION);
      unset($_SESSION['info']);
      unset($_SESSION['items']);
      session_destroy();
      $items = array_values($items);
     header("location: ../../compras.php");

?>