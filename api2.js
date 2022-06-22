grafico=document.getElementById('grafico');
var pais = [];
var poblacion = [];

fetch('http://localhost:8000/api/paises')

.then(dat_obte => dat_obte.json())
.then(function transformar (dat_obte){
    //iteramos sobre cada dato
        dat_obte.forEach(function agregar(dat_obte)
        {
        //si los datos son diferentes de vacio
            if(dat_obte.pais != undefined && dat_obte.poblacion) //!= undefined && dat_obte.idioma != undefined && dat_obte.poblacion != undefined)
            {
                pais.push(dat_obte.pais);
                //capital.push(dat_obte.capital);
                //idioma.push(dat_obte.idioma);
                poblacion.push(dat_obte.poblacion);

            }
        });

        var trace1 = {
            x: poblacion,
            y: pais,
            mode: 'lines',
            marker: {
              color: 'green',
              opacity: 10,
              size: 40,
            }
          };
          
          var data = [trace1];
          
          var layout = {
            title: 'POBLACION DE CADA PAIS',
            showlegend: false,
            height: 600,
            width: 1400,
            xaxis:
            {
                title:'POBLACION'
            },
            yaxis:
            {
                title: 'PAIS'
            },
          };
          
    Plotly.newPlot('grafico', data, layout);
          
});


