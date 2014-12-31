# Takes two parameters: container and app
`import Ember from 'ember'`

ImagesToPreload = [
  "assets/images/ai.jpg",
  "assets/images/haruka.jpg",
  "assets/images/kaoru.jpg",
  "assets/images/rihoko.jpg",
  "assets/images/sae.jpg",
  "assets/images/tsukasa.jpg",
  "assets/images/amagami.jpg", 
  "assets/images/bench.jpg", 
  "assets/images/vanilla.jpg",
  "assets/images/words2.jpg"
]

computed = ->
  [deps..., fun] = arguments
  ff = Ember.computed(fun)
  ff.property.apply ff, deps

observed = ->
  [fields..., fun] = arguments
  fun.observes.apply fun, fields
  

ImagePreloader = Ember.Object.extend
  areWeUsingPreloader: true
  stillLoadingImages: []
  registerImage: (source, callback) ->
    img = new Image()
    @stillLoadingImages.pushObject img
    img.onload = =>
      @stillLoadingImages.removeObject img
      $("#now-loading").hide(600) unless @get "isLoading"
      callback img if typeof callback is "function"
    img.src = source

  preloadImagesFromCSS: ->
    ImagesToPreload.map (s) => @registerImage s

  isLoading: computed "stillLoadingImages.length", "areWeUsingPreloader", ->
    @get("areWeUsingPreloader") and @get("stillLoadingImages.length") > 0

ImagePreloader.instance = new ImagePreloader()
ImagePreloader.instance.preloadImagesFromCSS()
registerImage = _.bind ImagePreloader.instance.registerImage, ImagePreloader.instance

initialize = (container, app) ->
  # app.register "route", ImagePreloader.instance, "service:imagePreloader"
  # app.register 'route', 'foo', 'service:foo'

ImagePreloaderInitializer =
  name: 'image-preloader'
  initialize: initialize

`export {initialize}`
`export default ImagePreloaderInitializer`
