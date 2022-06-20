<template>
  <div class="book">
    <h2 class="loading">patientez...</h2>
    <qrcode-stream @decode="onDecode"></qrcode-stream>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { QrcodeStream, QrcodeDropZone, QrcodeCapture } from 'vue-qrcode-reader'

@Component({
  components: {
    QrcodeStream,
    QrcodeDropZone,
    QrcodeCapture
  },
  methods: {
  onDecode (decodedString) {
    console.log("-->", decodedString)
  },
}
})
export default class BookView extends Vue {}
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
