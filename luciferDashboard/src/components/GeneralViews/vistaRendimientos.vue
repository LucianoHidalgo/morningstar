<template>
     <div v-if='carrera != null && asignatura !=null'>

        <b-container fluid class="option-bar">
            <b-row>
                <b-col cols = "8"> 
                    <h2 class="text-primary">{{carrera.nombre}} </h2>

                </b-col>
                <b-col></b-col>
                <b-col >
                    <b-button-group>
                        <b-button v-if="!filtrado"
                            variant="primary" 
                            v-on:click="filtrar">
                                Filtrar
                        </b-button>
                        <b-button v-else
                        variant="secondary" 
                        v-on:click="quitarFiltro">
                            Quitar Filtro
                        
                        </b-button>
                            <b-button  
                            variant="secondary"
                            v-on:click="volverAtras">
                                Volver atrás
                        </b-button>
                    </b-button-group>
 

                </b-col>
            </b-row>
        </b-container>
     <div>
         <b-tabs>
            <b-tab title="General" active>
                <b-row>
                    <b-col>

                        <app-graficos v-if='carrera != null && valores != null'
                        v-bind:carrera="carrera"
                        v-bind:valores="valores">
                        </app-graficos>
                        <h1 v-else> AQUI DEBERÍA IR EL GRÁFICO, PERO ALGO SALIÓ MAL</h1>
                    </b-col>
                    <b-col>
                        <app-tabla v-if='carrera!=null && valores!=null'
                        v-bind:carrera="carrera"
                        v-bind:valores="valores">
                        </app-tabla>

                        
                    </b-col>
                </b-row>
            </b-tab>
            <b-tab title="Teoría" 
            v-on:click="obtenerRendimientosTeoria()" 
             v-bind:disabled="asignatura.teoria == 0">
                <b-row>
                    <b-col>
                        <!--
                        <app-graficos v-if='carrera != null && valores_teoria != null'
                        v-bind:carrera="carrera"
                        v-bind:valores="valores_teoria">
                        </app-graficos>
                        <h1 v-else> AQUI DEBERÍA IR EL GRÁFICO, PERO ALGO SALIÓ MAL</h1>
                        -->
                    </b-col>
                    <b-col>
                        <app-tabla v-if='carrera!=null && valores_teoria!=null'
                        v-bind:carrera="carrera"
                        v-bind:valores="valores_teoria">
                        </app-tabla>

                        
                    </b-col>
                </b-row>
            </b-tab>
            <b-tab title="Laboratorio" 
            v-on:click="obtenerRendimientosLaboratorio()"
            v-bind:disabled="asignatura.laboratorio == 0">
                <b-row>
                    <b-col>
                        <!--
                        <app-graficos v-if='carrera != null && valores_laboratorio != null'
                        v-bind:carrera="carrera"
                        v-bind:valores="valores_laboratorio">
                        </app-graficos>
                        <h1 v-else> AQUI DEBERÍA IR EL GRÁFICO, PERO ALGO SALIÓ MAL</h1>
                        -->
                    </b-col>
                    <b-col>
                        <app-tabla v-if='carrera!=null && valores_laboratorio!=null'
                        v-bind:carrera="carrera"
                        v-bind:valores="valores_laboratorio">
                        </app-tabla>

                        
                    </b-col>
                </b-row>
            </b-tab>
        </b-tabs>
        </div>
    </div>
</template>

<script>

//Imports para el componente
import listaCarreras from './vistaRendimientos/listaCarreras.vue';
import tablaRendimientos from './vistaRendimientos/tablaRendimientos.vue';
import graficosRendimiento from './vistaRendimientos/graficosRendimiento.vue';

export default {

    components : {

        'app-lista-carreras': listaCarreras,
        'app-graficos': graficosRendimiento,
        'app-tabla' : tablaRendimientos
    },

    

    data : function(){

       
        return{
            codigo_carrera: this.$route.params.codigo_carrera,
            // HARDCODEADO
            codigo_asignatura : this.$route.params.codigo_asignatura,

            lista_de_carreras : null,
            
            valores : null,

            valores_teoria : null,

            valores_laboratorio : null,

            carrera : null,

            asignatura: null,

            filtrado : false,

            valoresOcultos : null
        }
    },
    methods : {

        filtrar : function(event){
            this.valoresOcultos = this.valores
            if(event){
                var valoresNuevos = [];
                this.valores.forEach(function(element) {

                    if (element.semestre == 1 || element.semestre == 2){
                        valoresNuevos.push(element)
                    }

                });
                this.valores = valoresNuevos;
                this.filtrado = true;

            }
        },
        quitarFiltro : function(event){

            this.valores = this.valoresOcultos
            this.filtrado = false;
        },
        volverAtras: function(){
            var codAsignatura = this.codigo_asignatura
            this.$router.push({
                name: 'asignaturaDetalle', 
                params : {
                    codigo_asignatura : codAsignatura
                }
            })
        },

        obtenerDatos : function(){
            let _this = this
            var urlListado = this.apiUrl  + '/carrera/';
            var urlCarrera = urlListado + this.codigo_carrera;
            var urlRendimientos = this.apiUrl  + '/rendimiento-carrera/?' + 
                'carr='+ this.codigo_carrera + 
                '&asig=' + this.codigo_asignatura;
            console.log(urlRendimientos)
            this.axios.all([
                this.axios.get(urlListado),
                this.axios.get(urlCarrera),
                this.axios.get(urlRendimientos)
            ]).then(this.axios.spread(function(listado, carrera, rendimientos )
            {   
                _this.carrera = carrera.data;
                _this.lista_de_carreras = listado.data;
                _this.valores = rendimientos.data;
            }));

        },
         obtenerRendimientosTeoria: function(){

        
            let _this = this
            var urlRendimientos = this.apiUrl  + '/rendimiento-carrera-teoria/?' + 
                'carr='+ this.codigo_carrera + 
                '&asig=' + this.codigo_asignatura;


            this.axios.get(urlRendimientos).then((response) => {

                _this.valores_teoria = response.data;

            }).catch(function(error){
                console.log(error);
            });
        },
        
        
        obtenerRendimientosLaboratorio: function(){

        
            let _this = this
            var urlRendimientos = this.apiUrl  + '/rendimiento-carrera-laboratorio/?' + 
                'carr='+ this.codigo_carrera + 
                '&asig=' + this.codigo_asignatura;


            this.axios.get(urlRendimientos).then((response) => {

                _this.valores_laboratorio = response.data;

            }).catch(function(error){
                console.log(error);
            });
        },

        obtenerAsignatura: function(){

            let _this = this
            var url = this.apiUrl  + '/asignatura/' +  this.codigo_asignatura;

            this.axios.get(url).then((response) => {

                _this.asignatura = response.data;

            }).catch(function(error){
                console.log(error);
            });
        },

 
    },
    computed : {
        
       tieneLaboratorio : function(){
           if (this.asignatura.laboratorio == 0) {
               return false
           }
           return true
       }
  

    },
    watch : {
        '$route' () {
            this.codigo_carrera = this.$route.params.codigo_carrera,
            this.valores_teoria = null
            this.valores_laboratorio = null
            this.valores = null
            this.asignatura =null
            this.obtenerDatos()

            this.filtrado = false

        }
    },


    created() {

        this.obtenerDatos();
        this.obtenerAsignatura();
    },



}
</script>

<style scoped>

</style>