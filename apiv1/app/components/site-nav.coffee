`import Ember from 'ember'`

computed = ->
  [deps..., fun] = arguments
  ff = Ember.computed(fun)
  ff.property.apply ff, deps

observed = ->
  [fields..., fun] = arguments
  fun.observes.apply fun, fields

SiteNavComponent = Ember.Component.extend
  classNames: ["site-nav", "navbar", "navbar-inverse"]
  tagName: "nav"

  scrolling: (evt) ->
    return @showStickyNav() if @scrollPosition() > 955
    @hideStickyNav()

  showStickyNav: ->
    return if @$().hasClass "sticky-naved"
    @$().addClass "sticky-naved"

  scrollPosition: ->
    window.scrollY

  hideStickyNav: ->
    return @$().removeClass "sticky-naved" if @$().hasClass "sticky-naved"
    
  didInsertElement: ->
    $(window).bind "touchmove", _.bind(@scrolling, @)
    $(window).bind "scroll", _.bind(@scrolling, @)

  willDestroyElement: -> 
    $(window).unbind "touchmove"
    $(window).unbind "scroll"

`export default SiteNavComponent`