`import Ember from 'ember'`
`import DS from 'ember-data'`

computed = ->
  [deps..., fun] = arguments
  ff = Ember.computed(fun)
  ff.property.apply ff, deps

Taglines =
  haruka: "a combination of beauty and brains"
  rihoko: "the plain and simple childhood friend"
  tsukasa: "discipline, hard work, determination mixed with ambition"
  sae: "shy, feminine, and well-bred"
  ai: "athletic with pride in her body"
  kaoru: "fun, rough, sarcastic, and a bit of a tomboy"

Points =
  haruka: [
    "popular, beautiful, and seemingly always at the center of attention"
    "because of her seeming perfection, she often invokes the jealousy or fear of others"
    "there are times in the night when she feels no one truly loves her"
    "consequently, she loves little animals and other innocent things that love her unconditionally"
  ],
  kaoru: [
    "tomboyish, fun, and a little wild"
    "perhaps also sarcastic and witty"
    "but she has her insecurities and possibly a short temper"
    "to some degree, she is afraid of intimacy"
  ],
  tsukasa: [
    "seemingly friendly, earnest, and pleasant"
    "she is ambitious and may even secretly look down on others"
    "she is driven by hard work and discipline and possibly a touch of bitterness"
    "she doesn't want the approval of her peers, but she does want the respect of society"
  ],
  sae: [
    "she is shy, demure, and cute"
    "perhaps she isn't as interesting as other girls"
    "not obsessed with ambition or perfection, simply being happy is enough"
    "she possibly reads a lot and has an imagination"
  ],
  ai: [
    "fit, energetic, and charged"
    "but perhaps with the usual athlete's insecurities of her body"
    "lives according to a good exercise routine"
    "her body is a temple for her mind"
  ],
  rihoko: [
    "the average girl, perhaps neither brilliant nor dazzling"
    "she is comfortable with herself though she still wishes to improve"
    "she is a girl with roots, someone with a stable home and family"
    "perhaps she is traditional and religious in her life choices"
  ]

Challenger = DS.Model.extend
  character: DS.attr "string"
  comments: DS.attr "string"
  roots: DS.attr "string"
  hobbies: DS.attr "string"
  projects: DS.attr "string"
  skills: DS.attr "string"
  books: DS.attr "string"
  genres: DS.attr "string"
  email: DS.attr "string"
  address: DS.attr "string"
  sex: DS.attr "string"

  characterTagline: computed "character", ->
    return if Ember.isBlank @get "character"
    Taglines[@get "character"]

  characterPoints: computed "character", ->
    return if Ember.isBlank @get "character"
    Points[@get "character"]

`export default Challenger`
