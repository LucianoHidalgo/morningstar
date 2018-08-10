<template>
<div >
<b-row>
        <b-col>
        <b-jumbotron  class="h-100 d-inline-block" 
            v-bind:header="asignatura.nombre" 
                v-bind:lead="asignatura.codigo" >
        
            <b-row>
                <b-col>
                Teoría 
                </b-col>
                <b-col>
                {{asignatura.teoria}}
                </b-col>
                <b-col>
                    Ejercicios
                </b-col>
                <b-col>
                    {{asignatura.ejercicios}}
                </b-col>
                <b-col>
                    Laboratorio
                </b-col>
                <b-col>
                    {{asignatura.laboratorio}}
                </b-col>
                <b-col>
                    SCT
                </b-col>
                <b-col>
                    No definido
                </b-col>
            </b-row>
            <hr class="my-4">
        <b-btn variant="primary" href="#">Ver programa</b-btn>
        <b-btn variant="secondary" v-on:click="volverAtras()">Volver atrás</b-btn>
        </b-jumbotron>
        </b-col>
        <b-col>
            <app-lista-carreras v-if='asignatura != null'
            v-bind:asignatura="asignatura"></app-lista-carreras>
        </b-col>
    </b-row>
</div>


</template>

<script>

import listaCarreras from './listaCarreras.vue';

export default {

    components : {
        'app-lista-carreras' : listaCarreras,
    },
    props : {

        asignatura : {
            required : true
        },

        
    },

    data: function(){
        return{
            

        }
    },
    methods:{
        volverAtras: function(){
            this.$emit('atras')
            this.$router.push({name: 'asignaturas'})
        },



       
    },
    computed : {


    },
    created() {

    },



}
</script>

<style scoped>



</style>