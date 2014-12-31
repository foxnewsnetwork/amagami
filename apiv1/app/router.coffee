`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource "challengers", path: "/challengers", ->
    @route "new"


`export default Router`