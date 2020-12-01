import Vue from 'vue'
import router from './router';
import App from './App'

// eslint-disable-next-line no-unused-vars
import bootstrap from './bootstrap'

Vue.config.productionTip = false

new Vue({
  render: h => h(App),
  router
}).$mount('#app')
