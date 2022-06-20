<template>
  <div class="navbar">
    <nav class="navigation">
      <router-link class="rooter" to="/book"><BookingsIcon class="icon"></BookingsIcon>Réserver</router-link>
      <router-link class="rooter" to="/bookings"><BookIcon class="icon"></BookIcon>Réservation</router-link>
    </nav>
  </div>
</template>

<script >
import { Component, Vue } from 'vue-property-decorator';
import BookingsIcon from '@/assets/bookings.svg';
import BookIcon from '../assets/icon_plan.svg'

@Component({
  components: {
    BookingsIcon,
    BookIcon,
  },
  methods: {

}
})
export default class Navbar extends Vue {}
</script>

<style lang="scss">
.navbar {
    display: flex;
    flex-direction: column;
    justify-content: center;
    background-color: #052c66;

    .navigation {
        height: 100%;
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-around;

        .rooter {
        height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            color: white;
            text-decoration: none;

            .icon {
                fill: white;
                height: 20px;
            }
        }
    }
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

.navigation a.router-link-exact-active {
  color: #42b983;
}
</style>