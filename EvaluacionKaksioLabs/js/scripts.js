var data;


$(document).ready(function (){ //metodo AJAX con get para obtener los datos de la API y JSON 
    $.ajax({
        url:'http://localhost:8080/EvaluacionKaksioLabs/gatos.json',
        type: "GET",
        contentType: 'gatos.json; charset=utf-8',
        success: function(data){
            data2=data["items"];
            randomizeJ(data2);
            console.log(data2)

            var cadena = JSON.stringify(data2);
            document.getElementById('content-text').innerHTML = cadena;
           

        },
        error: function (err){
            console.log(err);
        }

    })
})

function randomizeJ(data2){ // metodo random para el JSON que se pueda imprimir en orden aleatorio tanto en consola como en pantalla
    for (var i = 0; i < data2.length - 1; i++) {
        var j = i + Math.floor(Math.random() * (data2.length - i));

        var temp = data2[j];
        data2[j] = data2[i];
        data2[i] = temp;
    }
    return data2;
}

