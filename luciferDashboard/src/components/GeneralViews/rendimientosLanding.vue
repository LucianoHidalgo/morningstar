<template>
     <div>
        <b-container fluid class="option-bar">
            <b-row>
                <b-col>
                    <b-form-input v-model="search"
                        type="text"
                        placeholder="Buscar una asignatura"></b-form-input>
                    
                    <app-lista-asignaturas></app-lista-asignaturas>
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
// Imports
import searchMixin from '.../mixins/searchMixin';

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
            search: '',
            


        }
    },
    mixins: [searchMixin],
    methods : {

    },
    watch : {

    },


    created() {

    },



}
</script>

<style scoped>

</style>