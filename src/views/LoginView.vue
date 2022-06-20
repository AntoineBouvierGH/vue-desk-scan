<template>
  <div class="login">
    <div class="loginLogo">
        <img class="img" src="../assets/logo.login.png"  />
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';

@Component({
    components: {
    
    },
    methods: {

    },
    mounted: function() {
    
    }
})
export default class LoginView extends Vue {}
</script>

<style lang="scss">
.login {
    .loginLogo {
        .img {
            width: 80%;
        }
    }
}
</style>