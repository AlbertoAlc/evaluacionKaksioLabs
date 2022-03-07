<?php

    include_once 'db.php'; //Api de gatos extraida desde la DB

    class Gato extends DB{

        function obtenerGato(){
            $query = $this->connect()->query('SELECT * FROM cats');

            return $query;
        }

        function gatoesp($entrada){
            
            $query = $this->connect()->query('SELECT idCats, img_cats, name_cats, text_cats FROM cats WHERE idCats = '.$entrada.'');

            return $query;
        }
    }

    
?>