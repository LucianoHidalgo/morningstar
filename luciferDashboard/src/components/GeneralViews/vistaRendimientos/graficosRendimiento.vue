<template>
<div>

     <line-chart :chart-data="datacollection" :height="250" :options="options"></line-chart>
    <!--<div >
    <canvas id="graficoRendimiento"></canvas>

    </div> -->

</div>

</template>
<script>
import lineChart from './lineChart.js'


export default {

    components : {
        lineChart
    },

    props : {

        valores : {
            required : true
        },


        carrera : {
            required : true
        },
        rendimiento_asignatura : {
            required : true
        }
    },

    data: function(){
        return{

               
                data : null,
                labels : null,
                datacollection : null,
                options: {
                    
                    animation:  {
                        duration: 250
                    },
                    title: {
                        display: true,
                        text: 'Rendimiento carrera'
                    },
                    tooltips: {
                        mode: 'index',
                        intersect: false,
                    },
                    hover: {
                        mode: 'nearest',
                        intersect: true
                    },
                    scales: {
                        xAxes: [{
                            display: true,
                            scaleLabel: {
                                display: true,
                                labelString: 'Semestre'
                            }
                        }],
                        yAxes: [{
                            display: true,
                            scaleLabel: {
                                display: true,
                                labelString: 'Promedio'
                            }
                        }]
                    }
                }
        }
    },

    methods:{
        /*
        asignarValores : function(etiquetas, datos){

            this.chartData = {
                type: 'line',
                data: {

                    labels: etiquetas ,
                    datasets: [{
                        label: this.carrera.codigo,
                        fill: false,
                        backgroundColor: '#002F6C',
                        borderColor: '#002F6C',
                        data: datos,
                    }
                    ]
                },
                
		    };
        }, */

        
        asignarValores : function(etiquetas, datos, leyenda){

            this.datacollection = {
                labels : etiquetas,
                datasets : [
                    {
                        label: leyenda[0],
                        fill: false,
                        backgroundColor: '#002F6C',
                        borderColor: '#002F6C',
                        data: datos[0]
                    },
                    {
                        label: leyenda[1],
                        fill: false,
                        backgroundColor: '#EA7600',
                        borderColor: '#EA7600',
                        data: datos[1]   
                    }
                ]
            }
        },

        obtenerDataSetsAux(etiquetas){
            let _this = this
            var datos = [];
            this.rendimiento_asignatura.forEach(function(element){
                var etiquetaAux = element.anio + "-" + element.semestre;
                etiquetas.forEach(function(etiqueta){
                    if (etiquetaAux == etiqueta) {
                        datos.push(element.promedio)
                    }

                });
            });
            return datos

        },


        obtenerDataSets : function(){

            var etiquetas = [];
            var datos = [];
            var leyenda = [this.carrera.codigo, 'general']

            

            this.valores.forEach(function(element) {
                
                if (element.promedio != null) {
                    
                    var key = element.anio + "-" + element.semestre;
                    etiquetas.push(key)
                    datos.push(element.promedio);

                }
            });

            var datos2 = this.obtenerDataSetsAux(etiquetas)
            
            this.asignarValores(etiquetas, [datos, datos2], leyenda)
            

        },

    },
    
    watch : {
        valores : function(){
            this.obtenerDataSets()
            
        }
    },
    
    created(){

        this.obtenerDataSets()

        
    },
    mounted() {

    }
        
    

}


</script>