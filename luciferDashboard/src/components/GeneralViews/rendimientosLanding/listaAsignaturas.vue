<template>
<div >
    <b-form-input  v-model="search"
    type="text"
    placeholder="Buscar una asignatura">
    </b-form-input>
    <p>{{asignatura}}</p>
   <b-list-group id="lista-asignatura">
       <b-list-group-item button v-for="asignaturaMostrada in filtrarAsignatura" v-on:click="asignarAsignatura(asignaturaMostrada)">
           {{asignaturaMostrada.nombre}}
        </b-list-group-item>
    </b-list-group>

 
</div>


</template>

<script>


export default {
    props : {
        lista_de_asignaturas : {
            required : true
        },
        asignatura : {
            required : true
        }
    },

    data: function(){
        return{
            
            search: '',
            
        }
    },
    methods:{
        asignarAsignatura: function(asignaturaSeleccionada){
            this.asignatura = asignaturaSeleccionada
        },


       
    },
    computed : {
                filtrarAsignatura: function(){
                    return this.lista_de_asignaturas.filter((asignatura) => {
                        return asignatura.nombre.match(this.search);
                    });
                },

    },
    created() {

    },



}
</script>

<style scoped>



</style>