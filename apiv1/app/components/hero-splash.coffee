`import Ember from 'ember'`

canCSS3Filter = true
if bowser.msie
  canCSS3Filter = false
if bowser.firefox and bowser.version <= "34"
  canCSS3Filter = false
if bowser.safari and bowser.version <= "5.1"
  canCSS3Filter = false
if bowser.opera and bowser.mobile
  canCSS3Filter = false
if bowser.android and bowser.version <= "4.3"
  canCSS3Filter = false
HeroSplashComponent = Ember.Component.extend
  classNames: ['hero-splash']
  canCSS3Filter: canCSS3Filter


`export default HeroSplashComponent`
