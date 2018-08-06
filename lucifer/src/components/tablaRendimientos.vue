<template>
<div>
<h1>AQUI VA LA TABLA</h1>
</div>
</template>
<script>

export default {
    data(){
        return{

            valoresTabla : [],
            codigo_asignatura : '10110',
            codigo_carrera : '1353' 

            
        }
    },

    methods: {

    },
    created(){
        const url = this.apiUrl  + '/rendimiento_carrera/?' + 
                    'carr='+ this.codigo_carrera + 
                    '&asign=' + this.codigo_asignatura;
        this.axios.get(url).then((response) => {
            this.valoresTabla = response.data
            
            valoresTabla.forEach(function(element){
                console.log(element)
            });

            
            
    })
    .catch(function(error){
        console.log(error);
    });
    }
}
</script>