`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
  disconnectModal: ->
    $("#application-modal").hide()
    @disconnectOutlet
      outlet: 'modal'
      parentView: 'application'
  actions:
    displayModal: (modalName) ->
      $("#application-modal").show()
      @render "modals/#{modalName}",
        into: 'application'
        outlet: 'modal'
    closeModal: ->
      @disconnectModal()
    willTransition: ->
      @disconnectModal()

`export default ApplicationRoute`
