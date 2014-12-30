`import Ember from 'ember'`

RegionalMapComponent = Ember.Component.extend
  LosAngeles: [33.8842525,-118.1135375]
  classNames: ['regional-map']
  creditAttributions: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors'
  zoom: 11
  didInsertElement: ->
    @map = L.map @retrieveDOMId()
    @map.setView(@LosAngeles, @zoom)
    @attributionLayer().addTo @map

  attributionLayer: ->
    L.tileLayer 'https://{s}.tiles.mapbox.com/v3/{id}/{z}/{x}/{y}.png',
      maxZoom: 18,
      attribution: @creditAttributions
      id: 'examples.map-i875mjb7'

  willDestroyElement: ->
    @map.remove()
  
  retrieveDOMId: ->
    @$().attr "id"

`export default RegionalMapComponent`
