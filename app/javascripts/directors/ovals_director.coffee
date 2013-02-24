#= require ../oval
#= require ../router

class Ovals
  constructor : ->
    Oval.Router.on 'route:first_load', @firstLoad, @
    Oval.Router.on 'route:oval', @showOval, @

  firstLoad : -> alert 'first load'

  showOval : -> alert 'show oval'

Oval.Directors.Oval = new Ovals()