<template>
<div >
    

   <b-list-group id="lista-carrera">
       <b-list-group-item button 
       v-for="carrera in lista_de_carreras"
       v-on:click="asignarCarrera(carrera)">
           {{carrera.codigo}} - {{carrera.nombre}}
        </b-list-group-item>
    </b-list-group>

 
</div>


</template>

<script>

export default {
    props : {

        asignatura : {
            required : true
        }
    },

    data: function(){

        return{
            lista_de_carreras : null,
            carrera : null
            
        }
    },
    methods:{

        obtenerListado: function(){
            let _this = this
            var urlListado = this.apiUrl  + '/carreras-relacionadas/?' + 
                                    'asig=' + this.asignatura.codigo;

            this.axios.get(urlListado).then((response) => {

                _this.lista_de_carreras = response.data;

            }).catch(function(error){
                console.log(error);
            });
        },
        asignarCarrera: function(carrera){
            var codCarrera = carrera.codigo
            var codAsignatura = this.asignatura.codigo
            
           this.$router.push({name: 'rendimientos',  
                params: { 
                    codigo_carrera: codCarrera,
                    codigo_asignatura: codAsignatura
                }
             })
        },
       
    },
    watch : {
        asignatura : function(){
            this.carrera = null
        }
    },
    created() {
        this.obtenerListado()
        this.carrera = null
    }


}
</script>

<style scoped>



</style>