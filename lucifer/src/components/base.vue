<template>
     <div>
        <b-container class="option-bar">
            <b-row>
                <b-col> 
                    <app-lista-carreras>
                    </app-lista-carreras>
                </b-col>
                <b-col></b-col>
                <b-col>
                    <b-button variant="primary">Filtrar</b-button>
                </b-col>
            </b-row>
        </b-container>
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