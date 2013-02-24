#= require ../oval

class Oval.Models.Post extends Backbone.RelationalModel
  relations : [
    {
      type : Backbone.HasMany
      key : 'tags'
      relatedModel : 'Oval.Models.Tag'
      collectionType : 'Oval.Collections.Tags'
    }
  ]

Oval.Models.Post.setup()