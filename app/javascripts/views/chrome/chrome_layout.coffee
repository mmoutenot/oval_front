#= require ../../oval

class Oval.Views.Layouts.Chrome extends Backbone.Marionette.Layout
  id : 'l_chrome'
  template : 'chrome/chrome'
  events : 'click a' : 'routeAnchor'

  routeAnchor : (e) ->
    path = url 'path', $(e.currentTarget).prop('href')

    unless path in ['/login/', '/logout/']
      e.preventDefault()
      Oval.Router.navigate path, trigger : true