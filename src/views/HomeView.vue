<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js + TypeScript App"/>
    <qrcode-stream @decode="onDecode"></qrcode-stream>
<qrcode-drop-zone></qrcode-drop-zone>
<qrcode-capture></qrcode-capture>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import HelloWorld from '@/components/HelloWorld.vue'; // @ is an alias to /src

import { QrcodeStream, QrcodeDropZone, QrcodeCapture } from 'vue-qrcode-reader'

@Component({
  components: {
    HelloWorld,
    QrcodeStream,
    QrcodeDropZone,
    QrcodeCapture
  },
  methods: {
  onDecode (decodedString) {
    console.log("-->", decodedString)
  }
}
})
export default class HomeView extends Vue {}
</script>
