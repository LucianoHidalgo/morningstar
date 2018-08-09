<template>
<div >

   <b-list-group id="lista-carrera">
       <b-list-group-item v-for="carrera in lista_de_carreras">
           {{carrera.nombre}}
        </b-list-group-item>
    </b-list-group>

 
</div>


</template>

<script>

export default {


    data: function(){
        return{
            lista_de_carreras : null,
            
        }
    },
    methods:{

        obtenerListado: function(){
            let _this = this
            var urlListado = this.apiUrl  + '/carrera/';

            this.axios.get(urlListado).then((response) => {

                _this.lista_de_carreras = response.data;

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