<template>
<div >
    <b-form-input  v-model="search"
    type="text"
    placeholder="Buscar una asignatura">
    </b-form-input>

   <b-list-group id="lista-asignatura">
       <b-list-group-item 
        button v-for="asignaturaMostrada in filtrarAsignatura" 
        v-on:click="asignarAsignatura(asignaturaMostrada)">
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

    },

    data: function(){
        return{
            
            search: '',
            
        }
    },
    methods:{
        asignarAsignatura: function(asignaturaSeleccionada){
            var codAsignatura = asignaturaSeleccionada.codigo

            this.$emit('seleccionada', asignaturaSeleccionada)
            this.$router.push({name: 'asignaturaDetalle',  params: { codigo_asignatura: codAsignatura }})
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