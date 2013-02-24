#= require ./oval

class Router extends Backbone.Router
  routes :
    # Put your routes here
    '' : 'first_load'
    '/ovals/:id' : 'oval'

    # Catch all
    '*splat' : 'no_match'

Oval.Router = new Router()