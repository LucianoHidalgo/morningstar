<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>

<script>
import vistaRendimientos from './components/vistaRendimientos.vue';
export default {
  components : {
    'app-Base': vistaRendimientos
    },
    
  data () {

    return {
      
    }
  }
}
</script>

<style>

</style>
