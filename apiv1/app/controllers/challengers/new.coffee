`import Ember from 'ember'`

computed = ->
  [deps..., fun] = arguments
  ff = Ember.computed(fun)
  ff.property.apply ff, deps

ChallengersNewController = Ember.Controller.extend
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

  characterPic: computed "model.character", ->
    return if Ember.isBlank @get 'model.character'
    "assets/images/#{@get 'model.character'}.png"

`export default ChallengersNewController`