<template>
<div >

   <b-list-group id="lista-asignatura">
       <b-list-group-item v-for="asignatura in lista_de_asignaturas">
           {{asignatura.nombre}}
        </b-list-group-item>
    </b-list-group>

 
</div>


</template>

<script>

export default {


    data: function(){
        return{
            lista_de_asignaturas : null,
            
        }
    },
    methods:{

        obtenerListado: function(){
            let _this = this
            var urlListado = this.apiUrl  + '/asignatura/';

            this.axios.get(urlListado).then((response) => {

                _this.lista_de_asignaturas = response.data;

            }).catch(function(error){
                console.log(error);
            });
        }
       
    },
    created() {
        this.obtenerListado()
    }


}
</script>

<style scoped>



</style>