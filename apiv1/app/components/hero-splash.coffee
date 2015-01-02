`import Ember from 'ember'`

computed = ->
  [deps..., fun] = arguments
  ff = Ember.computed(fun)
  ff.property.apply ff, deps
  
HeroSplashComponent = Ember.Component.extend
  classNames: ['hero-splash']

  canCSS3Filter: computed "browserChecker.canCSS3Filter", ->
    @get("browserChecker.canCSS3Filter")


`export default HeroSplashComponent`
