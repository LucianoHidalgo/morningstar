<template>
<div class="dropdown">
  
   <b-dropdown id="ddown1" :text="carrera.nombre" class="md-2">


    <b-dropdown-item v-for="car in lista_de_carreras" >
        <router-link v-bind:to="'/' + car.codigo">{{ car.nombre }}
        </router-link>
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
            
        }
    },
    methods:{

        
    },

}
</script>

<style scoped>

</style>