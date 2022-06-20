import Vue from 'vue'
import VueRouter, { RouteConfig, Route } from 'vue-router'
import Bookings from '../views/BookingsView.vue'
import Book from '../views/BookView.vue'
import Login from '../views/LoginView.vue'

Vue.use(VueRouter)

function guard(to: Route, from: Route, next: Function) {
    if (to.path == '/login') {// || Bridge.user.login) {
        next();
    } else {
        //next('/login');
        next();
    }
}

const routes: Array<RouteConfig> = [
    {
      path: '/',
      redirect: '/book'
    },
    {
      path: '/book',
      name: 'Book',
      beforeEnter: guard,
      component: Book
    },
    {
      path: '/bookings',
      name: 'Bookings',
      beforeEnter: guard,
      component: Bookings
    },
    {
      path: '/login',
      name: 'Login',
      component: Login
    }
  ]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
