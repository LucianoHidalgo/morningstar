<template>
     <div>

        <b-container fluid>

            <b-row v-if='lista_de_asignaturas != null && asignatura == null'>
                <b-col>

                   <app-lista-asignaturas 
                    v-bind:lista_de_asignaturas="lista_de_asignaturas"
                    v-on:seleccionada='asignatura = $event'>
                    </app-lista-asignaturas>
                </b-col>
            </b-row>
            <b-row v-else-if='asignatura != null'>

                    <app-asignatura 
                    v-bind:asignatura="asignatura"
                    v-on:atras='asignatura = null'></app-asignatura>
            </b-row>
        </b-container>

    </div>
</template>

<script>

//Imports para el componente


import listaAsignaturas from './rendimientosLanding/listaAsignaturas.vue';
import detalleAsignatura from './rendimientosLanding/detalleAsignatura.vue';

export default {

    components : {
            'app-lista-asignaturas': listaAsignaturas,

            'app-asignatura' : detalleAsignatura
        },

    data : function(){

       
        return{
            codigo_asignatura: this.$route.params.codigo_asignatura,
            asignatura : null,
            lista_de_asignaturas : null,
        }
    },

    methods : {
        obtenerListado: function(){
            let _this = this
            var urlListado = this.apiUrl  + '/asignatura/';


            this.axios.get(urlListado).then((response) => {

                _this.lista_de_asignaturas = response.data;

            }).catch(function(error){
                console.log(error);
            });
        },
        obtenerAsignatura: function(codigo){
            let _this = this
            var url = this.apiUrl  + '/asignatura/' + codigo;

            console.log(url)
            this.axios.get(url).then((response) => {

                _this.asignatura = response.data;

            }).catch(function(error){
                console.log(error);
            });
        },




    },
    watch : {
    },


    created() {
        
        if (typeof this.$route.params.codigo_asignatura != "undefined") {

            this.obtenerAsignatura(this.$route.params.codigo_asignatura)
        }
        this.obtenerListado();       

    },




}
</script>

<style scoped>

</style>