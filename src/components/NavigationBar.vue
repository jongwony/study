<template>
  <div>
    <b-navbar toggleable="lg" type="dark" variant="dark" fixed="top">
      <b-navbar-brand>
        <router-link class="brand" to="/">Jongwony</router-link>
      </b-navbar-brand>

      <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

      <b-collapse id="nav-collapse" is-nav>
        <b-navbar-nav>
          <b-nav-item v-if="$route.name !== 'List'">
            <router-link to="/list/">
              Posts
            </router-link>
          </b-nav-item>
        </b-navbar-nav>

        <!-- Right aligned nav items -->
        <b-navbar-nav class="ml-auto">
          <b-nav-item href="//github.com/jongwony/fingerstyle" target="_blank">
            <img src="../assets/GitHub-Mark.webp" alt="" width="16" height="16">
          </b-nav-item>
          <b-nav-item href="//instagram.com/jongwony_" target="_blank">
            <img src="../assets/Instagram_AppIcon_Aug2017.webp" alt="" width="16" height="16">
          </b-nav-item>
          <b-nav-item href="//youtube.com/user/lastone9182" target="_blank">
            <img src="../assets/youtube_social_icon_red.webp" alt="" width="16" height="12">
          </b-nav-item>
        </b-navbar-nav>
      </b-collapse>
    </b-navbar>
  </div>
</template>

<script>
  export default {
    name: "NavigationBar",
  }
</script>

<style scoped>
  .brand {
    font-weight: bold;
  }
  a {
    color: ivory;
  }
</style>