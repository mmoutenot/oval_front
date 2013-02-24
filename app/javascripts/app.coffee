#= require ./oval
#= require ./router
#= require ./views/chrome/chrome_layout
#= require_tree ./helpers
#= require_tree ./directors
#= require_tree ./collections
#= require_tree ./models
#= require_tree ./modules

app = null

class Oval.App extends Backbone.Marionette.Application

  directors : {}
  helpers : {}

  constructor : ->
    if app then return app else app = window.oval = @
    super
    start()

start = ->
  oval.addRegions body : 'body'
  oval.account = new Oval.Models.User()
  initializeChrome()

  try Backbone.history.start()


initializeChrome = -> oval.body.show oval.chrome = new Oval.Views.Layouts.Chrome()