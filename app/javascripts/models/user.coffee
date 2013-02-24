#= require ../oval

class Oval.Models.User extends Backbone.RelationalModel
  relations : [
    {
      type : Backbone.HasMany
      key : 'groups'
      relatedModel : 'Oval.Models.Membership'
      collectionType : 'Oval.Collections.Memberships'
      reverseRelation :
        key : 'user'
        includeInJSON : false
    },
    {
      type : Backbone.HasMany
      key : 'posts'
      relatedModel : 'Oval.Models.Post'
      collectionType : 'Oval.Collections.Posts'
      reverseRelation :
        key : 'user'
        includeInJSON : false
    }
  ]

Oval.Models.User.setup()