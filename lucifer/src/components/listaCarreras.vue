<template>
<div class="dropdown">
  
   <b-dropdown id="ddown1" :text="carrera.nombre" class="md-2">

 
        <b-dropdown-item 
            v-for="car in lista_de_carreras" 
            v-on:click="mostrarCoso(car)" >
                {{ car.nombre }}           
        </b-dropdown-item>
 
    </b-dropdown>

 
 
</div>


</template>

<script>

export default {

    props : {

        lista_de_carreras : {
            required : true
        },

        carrera : {
            required : true
        }
    },

    data: function(){
        return{
            car : {}
            
        }
    },
    methods:{
        mostrarCoso : function(car) {
            this.$router.push({path : `/${car.codigo}`})
        }

        
    },


}
</script>

<style scoped>

</style>