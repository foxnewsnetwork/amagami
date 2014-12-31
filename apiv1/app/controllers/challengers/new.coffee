`import Ember from 'ember'`

computed = ->
  [deps..., fun] = arguments
  ff = Ember.computed(fun)
  ff.property.apply ff, deps

observed = ->
  [fields..., fun] = arguments
  fun.observes.apply fun, fields

ChallengersNewController = Ember.Controller.extend
  queryParams: ['s']
  characters: ['kaoru', 'tsukasa', 'rihoko', 'ai', 'sae', 'haruka']

  isKaoru: computed "model.character", -> 
    @get("model.character") is "kaoru"

  isTsukasa: computed "model.character", -> 
    @get("model.character") is "tsukasa"

  isRihoko: computed "model.character", -> 
    @get("model.character") is "rihoko"

  isAi: computed "model.character", -> 
    @get("model.character") is "ai"

  isSae: computed "model.character", -> 
    @get("model.character") is "sae"

  isHaruka: computed "model.character", -> 
    @get("model.character") is "haruka"

  isMale: computed "model.sex", ->
    @get("model.sex") is "boy"

  isGirl: computed "model.sex", ->
    @get("model.sex") is "girl"

  hasSex: computed "s", ->
    @get("s") is "boy" or @get("s") is "girl"

  characterPic: computed "model.character", ->
    return if Ember.isBlank @get 'model.character'
    "assets/images/#{@get 'model.character'}.jpg"

  manageSex: observed "s", ->
    return if Ember.isBlank @get "model"
    @set "model.sex", @get("s")

  successfulSave: ->
    $(".form-for").hide 450, => @set "alreadySubmitted", true
    
  failedSave: (reason) ->
    alert "sorry, the server is broken"
    console.log reason
    @set "failureReason", reason.responseJSON if reason.responseJSON

  actions:
    formSubmitted: ->
      @set "failureReason", null
      @model.save().then(_.bind @successfulSave, @).catch(_.bind @failedSave, @)

`export default ChallengersNewController`