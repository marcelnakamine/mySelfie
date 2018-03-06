<template>
  <div id="photo">
    <input type="text" placeholder="Photo Url" v-model="photoUrl"/>
    <input type="text" placeholder="Description" v-model="description"/>
    <input type="text" placeholder="Rating" v-model="rating"/>
    <input type="text" placeholder="tag(s)" v-model="tag"/>
    <input type="text" placeholder="User" v-model="user"/>
    <button @click="addPhoto()">Add Photo</button>
  </div>
</template>

<script>
export default {
  name: 'tag',
  created() {
    fetch('photos.json')
    .then((res) => { return res.json() })
    .then((res) => { this.tags = res })
  },
  data: function () {
    return {
      message: "Hello Vue!",
      addbook: '',
      photos: []
    }
  },
  methods: {
    addPhoto() {
      this.$http.post('photos.json', {photoUrl: this.photoUrl, description: this.description, rating: this.rating, tag: this.tag, user: this.user}, {})
        .then((res) => window.location = "/photos")
        .catch( (error) => console.log('Got a problem' + error));
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
