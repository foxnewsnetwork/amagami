# Takes two parameters: container and app

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

browserChecker = Ember.Object.extend
  canCSS3Filter: canCSS3Filter

initialize = (container, app) ->
  app.register 'browser:check', browserChecker
  app.inject 'controller', 'browserChecker', 'browser:check'
  app.inject 'component', 'browserChecker', 'browser:check'
  # app.register 'route', 'foo', 'service:foo'

BrowserCheckInitializer =
  name: 'browserChecker'
  initialize: initialize

`export {initialize}`
`export default BrowserCheckInitializer`
