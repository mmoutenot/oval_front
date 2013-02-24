#= require ./vendor
#= require_tree ./templates

window.Oval =
  Models : {}
  Directors : {}
  Collections : {}
  Lib : {}
  Modules : {}
  Views :
    Items : {}
    Collections : {}
    Regions : {}
    Composites : {}
    Layouts : {}
  Helpers : {}

  initialize : _.once -> new Oval.App()

$(document).ready -> Oval.initialize()