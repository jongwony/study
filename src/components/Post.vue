<template>
    <div>
        <p>{{routes.params.filename}}</p>
        <VueMarkdown>{{ context }}</VueMarkdown>
    </div>
</template>

<script>
    import VueMarkdown from 'vue-markdown'
    import Post from 'raw-loader!@/posts/2016-01-03-windowsvhd.md'
    function lazyLoad(filename) {
        return () => import(`raw-loader!@/posts${filename}`)
    }
    export default {
        name: "Post",
        data() {
            return {
                routes: this.$route,
                context: null
            }
        },
        created() {
            this.routes = this.$route
            let filename = this.$route.params.filename
            // this.context = Post
            lazyLoad(filename.replace('.', ''))().then(m => {
                console.log(Post)
                let text = '' + m.default + ''
                console.log(text)
                this.context = text;
            })

        },
        components: {VueMarkdown},
    }
</script>

<style scoped>

</style>
