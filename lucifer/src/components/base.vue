<template>
     <div>
        <app-lista-carreras>
        </app-lista-carreras>
    </div>
</template>

<script>
//Imports
import listaCarreras from './listaCarreras.vue';

export default {

    components : {
            'app-lista-carreras': listaCarreras,
        },

    data(){

        
        return{
            
            
        }
    }
}
</script>

<style scoped>

</style>