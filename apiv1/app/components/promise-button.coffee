`import Ember from 'ember'`

computed = ->
  [deps..., fun] = arguments
  ff = Ember.computed(fun)
  ff.property.apply ff, deps

observed = ->
  [fields..., fun] = arguments
  fun.observes.apply fun, fields

PromiseButtonComponent = Ember.Component.extend
  tagName: "button"
  classNames: "promise-button"
  classNameBindings: ["buttonState"]

  buttonState: computed "model.isSaving", ->
    if @get("model.isSaving")
      "disabled"
    else
      "ready"

  updateSpinner: observed "buttonState", ->
    if @get("buttonState") is "disabled"
      @$(".promise-button-content").hide()
      @$(".promise-button-spinner").show()
    else
      @$(".promise-button-content").show()
      @$(".promise-button-spinner").hide()

`export default PromiseButtonComponent`