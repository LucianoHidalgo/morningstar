<template>
<div class="container-fluid">
    <div class="row">
        <div class="col-xl-3 col-md-6">
          <stats-card>
            <div slot="header" class="icon-warning">
              <i class="nc-icon nc-chart text-warning"></i>
            </div>
            <div slot="content">
              <p class="card-category">Promedio</p>
              <h4 class="card-title">{{promedio}}</h4>
            </div>
            <div slot="footer">
              <i class="fa fa-refresh"></i>Updated now
            </div>
          </stats-card>
        </div>

        <div class="col-xl-3 col-md-6">
          <stats-card>
            <div slot="header" class="icon-success">
              <i class="nc-icon nc-light-3 text-success"></i>
            </div>
            <div slot="content">
              <p class="card-category">Aprobados</p>
              <h4 class="card-title">{{aprobados}}</h4>
            </div>
            <div slot="footer">
              <i class="fa fa-calendar-o"></i>Last day
            </div>
          </stats-card>
        </div>

        <div class="col-xl-3 col-md-6">
          <stats-card>
            <div slot="header" class="icon-danger">
              <i class="nc-icon nc-vector text-danger"></i>
            </div>
            <div slot="content">
              <p class="card-category">Reprobados</p>
              <h4 class="card-title">{{reprobados}}</h4>
            </div>
            <div slot="footer">
              <i class="fa fa-clock-o"></i>Last day
            </div>
          </stats-card>
        </div>

        <div class="col-xl-3 col-md-6">
          <stats-card>
            <div slot="header" class="icon-info">
              <i class="nc-icon nc-favourite-28 text-primary"></i>
            </div>
            <div slot="content">
              <p class="card-category">Convalidados</p>
              <h4 class="card-title">{{convalidados}}</h4>
            </div>
            <div slot="footer">
              <i class="fa fa-refresh"></i>Updated now
            </div>
          </stats-card>
        </div>
    </div>

</div>

</template>
<script>

 import StatsCard from 'src/components/UIComponents/Cards/StatsCard.vue'
export default {

    components: {
      StatsCard
    },

    props : {

        valores : {
            required : true
        },

        promedios : null,

        aprobados : null,

        reprobados : null,

        convalidados : null,
    },

    data: function(){
        return{
        }
    },

    methods:{
        obtenerTotales : function(){
            var promedio = 0
            var aprobados = 0
            var reprobados = 0
            var convalidados = 0
            var inscritos = 0
            this.valores.forEach(function(element) {
                
                if (element.promedio != null) {
                    
                    aprobados += element.aprobados
                    if (reprobados != null) {
                        reprobados += element.reprobados
                    }
                    if (convalidados != null) {
                        convalidados += element.convalidados
                    }
                    promedio += element.promedio * element.inscritos
                    inscritos += element.inscritos
                  
                }
                
            });
            promedio = (promedio / inscritos).toFixed(2)
            this.aprobados = aprobados
            this.reprobados = reprobados
            this.convalidados = convalidados
            this.promedio = promedio
            
        }

    },
    
    watch : {

        
    },
    
    created(){

        this.obtenerTotales()
        
    },
    mounted() {

    },
    updated(){
        this.obtenerTotales()
    }
        
    

}


</script>

<style>


</style>
