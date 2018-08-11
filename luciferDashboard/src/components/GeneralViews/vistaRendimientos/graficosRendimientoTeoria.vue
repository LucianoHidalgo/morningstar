<template>
<div>
    
    <div >
    <canvas id="graficoRendimiento"></canvas>

    </div>

</div>

</template>
<script>

export default {

    props : {

        valores : {
            required : true
        },

        carrera : {
            required : true
        }
    },

    data: function(){
        return{

            chartData : {},
            myChart : null,
            data : null,
            label : null,
        }
    },

    methods:{

        asignarValores : function(etiquetas, datos){

            this.chartData = {
                type: 'line',
                data: {

                    labels: etiquetas ,
                    datasets: [{
                        label: this.carrera.codigo,
                        fill: false,
                        backgroundColor: '#EA7600',
                        borderColor: '#EA7600',
                        data: datos,
                    }
                    ]
                },
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
		    };
        },
    

        obtenerDataSets : function(){
            var etiquetas = [];
            var datos = [];
            
            this.valores.forEach(function(element) {
                
                if (element.promedio != null) {
                    
                    var key = element.anio + "-" + element.semestre;
                    etiquetas.push(key)
                    datos.push(element.promedio);

                }
            });
            
            this.asignarValores(etiquetas,datos);
            

        },
        
        createChart: function(chartId, chartData) {


            var ctx = document.getElementById(chartId);
            
            this.myChart = new Chart(ctx, {
            type: chartData.type,
            data: chartData.data,
            options: chartData.options,
            
            });
  
        }
    },
    /*
    watch : {
        valores : function(){
            this.obtenerDataSets()
            this.myChart.destroy()
            this.createChart('graficoRendimiento', this.chartData)

            
        }
    },
    */
    created(){

        this.obtenerDataSets()

        
    },
    mounted() {
        if (this.myChart != null ){
            
            this.myChart.destroy()
        }
        
        this.createChart('graficoRendimiento', this.chartData);
    }

}


</script>