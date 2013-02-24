#= require ./vendor
#= require_tree ../templates

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

  init : -> new Oval.App()