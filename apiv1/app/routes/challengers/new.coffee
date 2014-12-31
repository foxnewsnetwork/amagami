`import Ember from 'ember'`

ChallengersNew = Ember.Route.extend
  queryParams:
    s:
      refreshModel: true
  model: (params) ->
    @store.createRecord "challenger", sex: params.s

`export default ChallengersNew`
