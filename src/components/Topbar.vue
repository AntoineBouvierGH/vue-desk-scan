<template>
    <div class="topbar">
        <img class="logo" src="../assets/logo_horizontal_dark.png"/>
        <div class="logout"><button class="button" onclick="logout">Se déconnecter</button></div>
    </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';

@Component({
    components: {
    },
    methods: {
        logout() {
            console.log("logout")
        }
    }
})
export default class Navbar extends Vue {}

</script>

<style lang="scss">

.topbar {
    background-color: #052c66;
    display: flex;
    justify-content: space-around;
    align-items: center;
    .logo {
        height: 50px;
    }
    .logout {
        color:white;
        font-size: 12px;

        .button {
            border:none;
            background-color: #052c66;
            color: white;
        }
    }
}

</style>