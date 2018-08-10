import Vue from 'vue'
import VueRouter from 'vue-router'
import App from './App.vue'
import axios from 'axios'
import VueAxios from 'vue-axios'
import VueChartkick from 'vue-chartkick'
import Chart from 'chart.js'
import BootstrapVue from 'bootstrap-vue'
import VueBreadcrumbs from 'vue-breadcrumbs'

Vue.use(VueBreadcrumbs)

// LightBootstrap plugin
import LightBootstrap from './light-bootstrap-main'

// router setup
import routes from './routes/routes'
// plugin setup
Vue.use(VueRouter)
Vue.use(BootstrapVue)
Vue.use(LightBootstrap)
Vue.use(VueAxios, axios)
Vue.use(VueChartkick, {adapter: Chart})
Vue.use(VueBreadcrumbs)


Vue.prototype.apiUrl =  'http://localhost:8000/rendimientos/api';


// configure router
const router = new VueRouter({
  routes, // short for routes: routes
  linkActiveClass: 'nav-item active'
})

/* eslint-disable no-new */
new Vue({
  el: '#app',
  render: h => h(App),
  router
})
