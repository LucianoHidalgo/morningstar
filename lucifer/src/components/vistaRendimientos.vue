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
            <b-row>
                <b-col>
                    <app-graficos>
                    </app-graficos>
                </b-col>
                <b-col>
                    <app-tabla>
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
           
            
        }
    },

}
</script>

<style scoped>

</style>