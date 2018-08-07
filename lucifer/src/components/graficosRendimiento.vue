<template>
<div>
    <canvas id="graficoRendimiento"></canvas>
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

            chartData : {}
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
                        backgroundColor: '#002F6C',
                        borderColor: '#002F6C',
                        data: datos,
                    }
                    ]
                },
                options: {
                    responsive: true,
                    animation: {
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
            const ctx = document.getElementById(chartId);
            const myChart = new Chart(ctx, {
            type: chartData.type,
            data: chartData.data,
            options: chartData.options,
            });
        }
    },
    created(){

        this.obtenerDataSets()

    },
    mounted() {
        this.createChart('graficoRendimiento', this.chartData);
    }

}


</script>