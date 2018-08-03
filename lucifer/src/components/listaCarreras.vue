<template>
<div class="dropdown">
  
   <b-dropdown id="ddown1" :text="carrera.nombre" class="m-md-2">


    <b-dropdown-item v-for="car in lista_de_carreras">
      {{ car.nombre }}
    </b-dropdown-item>
  </b-dropdown>
 
 
 
</div>


</template>

<script>
export default {
    data(){
        return{

            lista_de_carreras : [
                {nombre : 'Ingenieria Informática'},
                {nombre : 'Ingenieria en Minas'}
            ],
            carrera : {
                nombre : 'Otra ingeniería'
            }
            
        }
    }
}
</script>

<style scoped>

</style>