<template>
  <div class="bookings">
    <h1>Booking</h1>
    <button v-on:click="test">test bridge</button>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import * as Bridge from '../services/Bridge';
import * as DateService from '../services/Date';

@Component({
  components: {
 
  },
  methods: {
    test: function () {
      var test = Bridge.getBookings("2022-06-21", "2022-06-21").then((he) => {console.log(he)})
    }
  }
})
export default class BookingsView extends Vue {}
</script>