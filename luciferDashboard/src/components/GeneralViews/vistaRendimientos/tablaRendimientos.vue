<template>
<div>

    <b-table striped hover
        :sort-by.sync="sortBy"
        :sort-desc.sync="sortDesc" 
        :items="valoresDisplay"
        :fields="encabezados"
        >

            <template slot="HEAD_año" slot-scope="data">
            <!-- Poner la Ñ al año -->
                Año
            </template>
            <template slot="promedio" slot-scope="data">
                <!-- Colorear los promedios -->
                <p v-if="data.value>3.95" class="text-primary" >
                    {{data.value}} 
                </p>
                <p v-else class="text-danger" >
                    {{data.value}} 
                </p>
            </template>
    </b-table>

</div>
</template>
<script>

export default {

    props : {

        carrera : {
            required : true
        },
        valores : {
            required : true
        }
    },

    data: function(){
        return{

            sortBy: 'año',
            sortDesc: false,

            encabezados : [
                {key: 'año', sortable: true},
                {key: 'semestre', sortable: true},
                {key: 'promedio', sortable: true},
                {key: 'aprobados', sortable: true},
                {key: 'reprobados', sortable: true},
            ],
            valoresDisplay: [],
            etiquetas : null
        }
    },

    watch : {
       valores : function(){
           this.obtenerValoresTabla
       } 
    },

    computed: {

        obtenerValoresTabla: function(){
            
            var valoresTabla = []
            this.valores.forEach(function(element) {

                var nuevoElemento = {};              

                if (element.promedio != null) {
                    nuevoElemento['año'] = element.anio;
                    nuevoElemento['semestre'] = element.semestre;
                    nuevoElemento['promedio'] = element.promedio.toFixed(2);
                    nuevoElemento['aprobados'] = element.aprobados;
                    if (element.reprobados == null ) {
                        nuevoElemento['reprobados'] = 0;
                    } 
                    else {
                        nuevoElemento['reprobados'] = element.reprobados;
                    }
                    valoresTabla.push(nuevoElemento);
                }
                
            });
            this.valoresDisplay = valoresTabla

        }
    },

    created(){

         this.obtenerValoresTabla

    }
    
}
</script>