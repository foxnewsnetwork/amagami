`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource "challengers", path: "/challengers", ->
    @route "new"
  @resource "amagami", path: "/amagami/:name", ->
    @route "about"


`export default Router`