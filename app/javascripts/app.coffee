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
  initializeChrome()
  initializeModules()

  setApplicationVariables()
  try Backbone.history.start()

setApplicationVariables = (response) ->
  oval.router = new Oval.Router()
  initializeObjects oval.directors, Oval.Directors

initializeChrome = ->
  oval.chrome = new Oval.Views.Layouts.Chrome()
  oval.body.show oval.chrome

initializeModules = ->
  # Enter your modules here

initializeObjects = (namespace, constructors, args) ->
  (namespace[_(name).camelize true] ?= new constructor args) for name, constructor of constructors