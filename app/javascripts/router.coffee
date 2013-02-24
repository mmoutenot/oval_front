#= require ./oval

class Oval.Router extends Backbone.Router
  routes :
    # Put your routes here
    # '' : 'intro'

    # Catch all
    '*splat' : 'no_match'