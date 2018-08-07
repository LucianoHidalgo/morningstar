import Vue from 'vue'

import axios from 'axios'
import VueAxios from 'vue-axios'
import BootstrapVue from 'bootstrap-vue'
import VueRouter from 'vue-router'
import VueChartkick from 'vue-chartkick'
import Chart from 'chart.js'

import Routes from './routes'
import App from './App.vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

Vue.use(BootstrapVue)
Vue.use(VueAxios, axios)
Vue.use(VueRouter)
Vue.use(VueChartkick, {adapter: Chart})

Vue.prototype.apiUrl =  'http://localhost:8000/rendimientos/api';

const router = new VueRouter({
  routes : Routes,
  mode: 'history'
});

new Vue({
  el: '#app',
  render: h => h(App),
  router : router
})

