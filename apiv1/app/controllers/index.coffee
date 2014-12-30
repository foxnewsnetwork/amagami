`import Ember from 'ember'`

ctd = ->
  [deps..., fun] = arguments
  ff = Ember.computed(fun)
  ff.property.apply ff, deps

IndexController = Ember.Controller.extend
  queryParams: ['s', 'v']
  versions: ['kaoru', 'tsukasa', 'rihoko', 'ai', 'sae', 'haruka']
  reasons: [
    "take this chance to bring out the main character in you.",
    "clean yourself up, get into shape, and sweep a maiden off her feet.",
    "remember all those dense fools seducing all your favorite girls? Now it is time for you to show yourself (and the world) how it's done.",
    "rise above your peers and yourself and achieve a happiness not yet known; prove yourself.",
    "experience an older world far more wonderful than the computer screen and fall in love like it's 1993.",
    "learn to love, understand, and get close to another real person.",
    "rediscover an ancient meaning to life more intimately human than money, fame, or peer approval."
  ]
  presentVersionIndex: ctd "v", ->
    ind = @get("v")
    @versions.indexOf ind

  isKaoru: ctd "v", -> @get("v") is "kaoru"
  isTsukasa: ctd "v", -> @get("v") is "tsukasa"
  isRihoko: ctd "v", -> @get("v") is "rihoko"
  isAi: ctd "v", -> @get("v") is "ai"
  isSae: ctd "v", -> @get("v") is "sae"
  isHaruka: ctd "v", -> @get("v") is "haruka"
  goalPic: ctd "v", ->
    return "assets/images/vanilla.png" if Ember.isBlank @get "v"
    "assets/images/#{@get 'v'}.png"

  currentReason: ctd "time", ->
    i = _.bind(@incrementTime, @)
    _.delay i, 10000
    @reasons[@get("time") || 0]

  decrementVersionIndex: ->
    k = (@get("presentVersionIndex") + 5) % 6
    Math.abs k
    
  incrementVersionIndex: ->
    k = (@get("presentVersionIndex") + 1) % 6
    Math.abs k

  incrementTime: ->
    t = @get("time") || 0
    t = (t + 1) % @reasons.length
    @set "time", t

  actions:
    toggleVersion: (direction)->
      if direction is "left"
        return @set "v", "haruka" if Ember.isBlank @get "v"
        @set "v", @versions.objectAt @decrementVersionIndex()
      else
        return @set "v", "kaoru" if Ember.isBlank @get "v"
        @set "v", @versions.objectAt @incrementVersionIndex()


`export default IndexController`
