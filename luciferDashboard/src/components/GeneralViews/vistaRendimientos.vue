<template>
     <div>

        <b-container fluid class="option-bar">
            <b-row>
                <b-col> 
                    <app-lista-carreras v-if='carrera != null && lista_de_carreras!=null' 
                        v-bind:lista_de_carreras="lista_de_carreras"
                        v-bind:carrera="carrera">
                    </app-lista-carreras>

                </b-col>
                <b-col></b-col>
                <b-col>

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
 

                </b-col>
            </b-row>
            <b-row>
                <b-col>

                    <app-graficos v-if='carrera != null && valores != null'
                    v-bind:carrera="carrera"
                    v-bind:valores="valores">
                    </app-graficos>
                    <h1 v-else> AQUI DEBERÍA IR EL GRÁFICO, PERO ALGO EN MAIN SALIÓ MAL</h1>
                </b-col>
                <b-col>
                    <app-tabla v-if='carrera!=null && valores!=null'
                    v-bind:carrera="carrera"
                    v-bind:valores="valores">
                    </app-tabla>

                    
                </b-col>
            </b-row>
        </b-container>
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
            codigo_asignatura : 10110,

            lista_de_carreras : null,
            
            valores : null,

            carrera : null,

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
            /*
            let _this = this
            var urlRendimientos = this.apiUrl  + '/rendimiento_carrera/?' + 
                                    'carr='+ this.codigo_carrera + 
                                    '&asign=' + this.codigo_asignatura;

            console.log(urlRendimientos)
            this.axios.get(urlRendimientos).then((response) => {

                _this.valores = response.data
            })
            .catch(function(error){
                console.log(error);
            });
            */
           this.valores = this.valoresOcultos
            this.filtrado = false;
        },
        obtenerDatos: function(){
            
            var urlListado = this.apiUrl  + '/carrera/';
            var urlCarrera = urlListado + this.codigo_carrera;

            this.axios.get(urlCarrera).then((response) => {

                this.carrera = response.data;

            }).catch(function(error){
                console.log(error);
            });

            this.axios.get(urlListado).then((response)=> {
                
                this.lista_de_carreras = response.data;
                console.log("OBTENGO LISTADO")
            }).catch(function(error){
                console.log(error);
            });

            var urlRendimientos = this.apiUrl  + '/rendimiento-carrera/?' + 
                'carr='+ this.codigo_asignatura + 
                '&asign=' + this.codigo_asignatura;

            this.axios.get(urlRendimientos).then((response) => {

                this.valores = response.data
                
                                
            })
            .catch(function(error){
                console.log(error);
            });


        },
        obtenerCosas : function(){
            let _this = this
            var urlListado = this.apiUrl  + '/carrera/';
            var urlCarrera = urlListado + this.codigo_carrera;
            var urlRendimientos = this.apiUrl  + '/rendimiento-carrera/?' + 
                'carr='+ this.codigo_carrera + 
                '&asign=' + this.codigo_asignatura;

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

        }
 
    },
    watch : {
        '$route' () {
            this.codigo_carrera = this.$route.params.codigo_carrera,
            this.obtenerCosas()
            this.filtrado = false

        }
    },


    created() {


        this.obtenerCosas();



    },



}
</script>

<style scoped>

</style>