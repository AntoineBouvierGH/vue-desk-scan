<template>
  <div id="app">
    <Topbar class="topbar"></Topbar>
    <router-view/>
    <Navbar class="navbar"></Navbar>
  </div>
</template>

<script>
import Navbar from "./components/Navbar";
import Topbar from "./components/Topbar"

export default {
  components: { Navbar, Topbar },
};
</script> 

<style>
html, body {
    width: 100vw;
    height: 100vh;
    margin: 0px;
}

#app {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    background-color:#f4f7ff;
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.topbar {
    height: 60px;
}

.navbar {
    height: 60px;
}

</style>
