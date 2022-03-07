<?php

    include_once 'gato.php';

    class ApiGatos{ //End point para carga dinamica de JSON y hacerlo random para imprimir en consola y en pantalla 

        function getAll(){
            $gato = new Gato();
            $gatos = array();
            $gatos["items"] = array();

            $res = $gato->obtenerGato();
            

            if($res->rowCount()){
                while($row = $res->fetch(PDO::FETCH_ASSOC)){
                    $item = array(
                        'idCats' => $row['idCats'],
                        'img_cats' => $row['img_cats'],
                        'name_cats' => $row['name_cats'],
                        'text_cats' => $row['text_cats']

                    );
                    array_push($gatos['items'], $item);
                }

                
                $gatoencode = json_encode($gatos);
                echo $gatoencode;


                file_put_contents("gatos.json",$gatoencode);

            }else{
                    
            }
        }
        
    }



    class ApiGatos2{  //End point para carga dinamica de el nombre y texto de el gato seleccionado en index.html
        function Gato_espec($entrada){
            $gatoesp = new Gato();
            $gatosesp = array();
            $gatosesp["items"] = array();
            

            $res = $gatoesp->gatoesp($entrada);

            if($res->rowCount()){
                while($row = $res->fetch(PDO::FETCH_ASSOC)){
                    $item = array(
                        'name_cats' => $row['name_cats'],
                        'text_cats' => $row['text_cats']

                    );
                    array_push($gatosesp['items'], $item);

                }

                               
                  $tempgat = json_encode($gatosesp);
                  $tempgat1 = substr($tempgat,9);
                  echo $tempgat1;
                



            }else{
                echo json_encode(array('mensaje' => 'No hay elementos registrados'));
            }
        }
    }

    
?>