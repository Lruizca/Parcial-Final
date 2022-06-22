grafico=document.getElementById('mydiv');
var pais = [];
var poblacion = [];
var capital =[];
var idioma = [];

fetch('http://localhost:8000/api/paises')

.then(dat_obte => dat_obte.json())
.then(function transformar (dat_obte){
    //iteramos sobre cada dato
        dat_obte.forEach(function agregar(dat_obte)
        {
        //si los datos son diferentes de vacio
            if(dat_obte.pais != undefined && dat_obte.poblacion!= undefined && dat_obte.idioma != undefined && dat_obte.capital != undefined)
            {
                pais.push(dat_obte.pais);
                capital.push(dat_obte.capital);
                idioma.push(dat_obte.idioma);
                poblacion.push(dat_obte.poblacion);

            }
            var data = [
                {
                  x: poblacion,
                  y: pais,
                  type: 'bar'
                }
              ];
              
              Plotly.newPlot('mydiv', data);
            
            });
});
