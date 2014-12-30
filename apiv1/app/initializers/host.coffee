# Takes two parameters: container and app
initialize = (container, app) ->
  # app.register 'route', 'foo', 'service:foo'

HostInitializer =
  name: 'host'
  initialize: initialize

`export {initialize}`
`export default HostInitializer`
