<template>
  <div class="book">
    <h2 class="loading">patientez...</h2>
    <qrcode-stream @decode="onDecode"></qrcode-stream>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { QrcodeStream, QrcodeDropZone, QrcodeCapture } from 'vue-qrcode-reader'
import * as Bridge from '../services/Bridge';
import * as DateService from '../services/Date';

@Component({
  components: {
    QrcodeStream,
    QrcodeDropZone,
    QrcodeCapture
  },
  methods: {
  onDecode (decodedString) {
    console.log("-->", decodedString);
    Bridge.runTask('desk/book', {
      'desk'      : "F1R2B2D1",
      'login'     : "abouvier",
      'begin_date': "2022-06-21",
      'end_date'  : "2022-06-21"
    }).then((res) => {console.log("ici", res)})
  },
}
})
export default class BookView extends Vue {
  // private makeReservation() {
  //   Bridge.runTask('desk/book', {
  //     'desk'      : "F1R2B2D1",
  //     'login'     : "abouvier",
  //     'begin_date': "2022-06-21",
  //     'end_date'  : "2022-06-21"
  //   }).then((res) => {console.log("ici", res)})
  // }
}
</script>

<style lang="scss">
.book {
    .loading {
        position: fixed;
        text-align: center;
        width: 100%;
    }
}
</style>
