<template>
     <div>
        <b-container fluid class="option-bar">
            <b-row>
                <b-col>
                   
                   <app-lista-asignaturas v-if='lista_de_asignaturas != null'
                    v-bind:lista_de_asignaturas="lista_de_asignaturas">
                    </app-lista-asignaturas>
                </b-col>
                <b-col>
                    <app-lista-carreras></app-lista-carreras>
                </b-col>
            </b-row>
        </b-container>

    </div>
</template>

<script>

//Imports para el componente


import listaAsignaturas from './rendimientosLanding/listaAsignaturas.vue';
import listaCarreras from './rendimientosLanding/listaCarreras.vue';


export default {

    components : {
            'app-lista-asignaturas': listaAsignaturas,
            'app-lista-carreras' : listaCarreras
        },

    data : function(){

       
        return{
            codigo_asignatura: this.$route.params.codigo_asignatura,
            lista_de_asignaturas : null,
            
            


        }
    },

    methods : {
        obtenerListado: function(){
            let _this = this
            var urlListado = this.apiUrl  + '/asignatura/';
            console.log(urlListado)

            this.axios.get(urlListado).then((response) => {

                _this.lista_de_asignaturas = response.data;

            }).catch(function(error){
                console.log(error);
            });
        }

    },
    watch : {

    },


    created() {
        this.obtenerListado();
    },



}
</script>

<style scoped>

</style>