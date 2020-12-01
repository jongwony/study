import Vue from 'vue'
import VueRouter from 'vue-router'

import About from "./components/About"
import List from "./components/List"
import Post from "./components/Post"

Vue.use(VueRouter)

export default new VueRouter({
  routes: [
    {
      name: 'About',
      title: 'About',
      path: '/',
      component: About,
    },
    {
      name: 'List',
      title: 'List',
      path: '/list/',
      component: List,
    },
    {
      name: 'Post',
      title: 'Post',
      path: '/post/:filename',
      component: Post,
    },
  ]
})