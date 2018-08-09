<template>
<div >

   <b-dropdown id="ddown2" :text="carrera.nombre" class="md-2">


        <b-dropdown-item 
            v-for="car in lista_de_carreras" 
            v-on:click="navegarACarrera(car)" >
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
        },

    },

    data: function(){
        return{
            car : {}
            
        }
    },
    methods:{
        navegarACarrera : function(car) {

            this.$router.push({ path: `/admin/carrera/${car.codigo}` }) 
            //this.$router.push({ name: 'rendimiento', params: { codigo_carrera }}) 
        },



        
    },


}
</script>

<style scoped>



</style>