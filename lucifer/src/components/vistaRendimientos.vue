<template>
     <div>
        <b-container class="option-bar">
            <b-row>
                <b-col> 
                    <app-lista-carreras 
                        v-bind:lista_de_carreras="lista_de_carreras"
                        v-bind:carrera="carrera">
                    </app-lista-carreras>
                </b-col>
                <b-col></b-col>
                <b-col>
                    <b-button variant="primary">Filtrar</b-button>
                </b-col>
            </b-row>
            <b-row>
                <b-col>
                    <app-graficos>
                    </app-graficos>
                </b-col>
                <b-col>
                    <app-tabla 
                    v-bind:carrera="carrera"
                    v-bind:valores="valores">
                    </app-tabla>
                </b-col>
            </b-row>
        </b-container>
    </div>
</template>

<script>
//Imports
import listaCarreras from './listaCarreras.vue';
import tablaRendimientos from './tablaRendimientos.vue';
import graficosRendimiento from './graficosRendimiento.vue';

export default {

    components : {
            'app-lista-carreras': listaCarreras,
            'app-graficos': graficosRendimiento,
            'app-tabla' : tablaRendimientos
        },

    data(){

       
        return{
            codigo_carrera: this.$route.params.codigo_carrera,
            // HARDCODEADO
            codigo_asignatura : 10110,

            lista_de_carreras : [],
            
            valores : [],

            carrera : {},

        }
    },
    methods : {
        obtenerDatos: function(){
            var urlListado = this.apiUrl  + '/carrera/';
            var urlCarrera = urlListado + this.codigo_carrera;

            this.axios.get(urlCarrera).then((response) => {

                this.carrera = response.data;
                console.log("OBTENGO CARRERA" + this.carrera.nombre)
            }).catch(function(error){
                console.log(error);
            });

            this.axios.get(urlListado).then((response)=> {
                
                this.lista_de_carreras = response.data;
                console.log("OBTENGO LISTADO")
            }).catch(function(error){
                console.log(error);
            });

            var urlRendimientos = this.apiUrl  + '/rendimiento_carrera/?' + 
                'carr='+ this.codigo_asignatura + 
                '&asign=' + this.codigo_asignatura;

            this.axios.get(urlRendimientos).then((response) => {

                this.valores = response.data
                console.log("OBTUVE VALORES")
                console.log(this.valores)
                                
            })
            .catch(function(error){
                console.log(error);
            });


        },
        obtenerCosas : function(){
            var urlListado = this.apiUrl  + '/carrera/';
            var urlCarrera = urlListado + this.codigo_carrera;
            var urlRendimientos = this.apiUrl  + '/rendimiento_carrera/?' + 
                'carr='+ this.codigo_carrera + 
                '&asign=' + this.codigo_asignatura;

            this.axios.all([
                this.axios.get(urlListado),
                this.axios.get(urlCarrera),
                this.axios.get(urlRendimientos)
            ]).then(this.axios.spread(function(listado, carrera, rendimientos )
            {   
                console.log('Carrera', carrera.data);
                console.log('Listado', listado.data);
                console.log('Rendimientos', rendimientos.data);
                this.carrera = carrera;
                this.lista_de_carreras = lista_de_carreras;
                this.valores = rendimientos;
                
            }));

        }
 
    },


    created() {

        
        this.obtenerCosas();
        alert(this.carrera.nombre)



    },



}
</script>

<style scoped>

</style>