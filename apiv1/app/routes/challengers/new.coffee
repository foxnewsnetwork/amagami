`import Ember from 'ember'`

ChallengersNew = Ember.Route.extend
  model: ->
    @store.createRecord "challenger"

`export default ChallengersNew`
