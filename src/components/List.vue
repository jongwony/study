<template>
    <div>
        <section v-for="post in posts" :key="post">
            <router-link :to="post">{{post.params.filename}}</router-link>
        </section>
    </div>
</template>

<script>

    export default {
        name: "List",
        data() {
            return {
                posts: []
            }
        },
        created() {
            let post = require.context(
                '@/posts',
                true,
                /^.*\.md$/
            )
            this.posts = post.keys().map(function (x) {
                return {name: 'Post', params: {filename: x}}
            })
            console.log(this)
        },
    }
</script>

<style scoped>

</style>
