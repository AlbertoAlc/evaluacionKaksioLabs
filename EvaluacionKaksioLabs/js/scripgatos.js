var data;




$(document).ready(function (){ //Metodo GET en AJAX que obtiene los datos de nombre y texto del gato solo para la imagen que se selecciono desde la API y JSON
    $.ajax({
        url:'http://localhost:8080/EvaluacionKaksioLabs/gatos.json',
        type: "GET",
        contentType: 'gatos.json; charset=utf-8',
        success: function(data){
            data2=data["items"];
            if(document.getElementById("result1n") != null){
            document.getElementById("result1n").innerHTML = data2[0]['name_cats'];
            document.getElementById("result1t").innerHTML = data2[0]['text_cats'];
            }
            if(document.getElementById("result2n") != null){
                document.getElementById("result2n").innerHTML = data2[1]['name_cats'];
                document.getElementById("result2t").innerHTML = data2[1]['text_cats'];
                }
            if(document.getElementById("result3n") != null){
                document.getElementById("result3n").innerHTML = data2[2]['name_cats'];
                document.getElementById("result3t").innerHTML = data2[2]['text_cats'];
                }
            if(document.getElementById("result4n") != null){
                document.getElementById("result4n").innerHTML = data2[3]['name_cats'];
                document.getElementById("result4t").innerHTML = data2[3]['text_cats'];
                }
            if(document.getElementById("result5n") != null){
                document.getElementById("result5n").innerHTML = data2[4]['name_cats'];
                document.getElementById("result5t").innerHTML = data2[4]['text_cats'];
                }
            if(document.getElementById("result6n") != null){
                document.getElementById("result6n").innerHTML = data2[5]['name_cats'];
                document.getElementById("result6t").innerHTML = data2[5]['text_cats'];
                }

        },
        error: function (err){
            console.log(err);
        }

    })
})

