<template>
<div class="dropdown">
  
   <b-dropdown id="ddown1" :text="carrera.nombre" class="md-2">


    <b-dropdown-item v-for="car in lista_de_carreras" v-on:click="carrera=car" >
      {{ car.nombre }}
    </b-dropdown-item>
  </b-dropdown>

 
 
</div>


</template>

<script>
export default {
    data(){
        return{

            lista_de_carreras : [],
            carrera : {
                nombre : 'Seleccione una carrera'
            },

            
        }
    },

    methods: {

    },
    created(){
        this.axios.get('http://127.0.0.1:8000/rendimientos/api/carrera/').then((response) => {
        console.log(response.data)
        this.lista_de_carreras = response.data
    })
    }
}
</script>

<style scoped>

</style>