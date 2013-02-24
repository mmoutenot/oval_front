#= require ../oval

class Oval.Models.Group extends Backbone.RelationalModel
  relations : [
    {
      type : Backbone.HasMany
      key : 'users'
      relatedModel : 'Oval.Models.Membership'
      relatedCollection : 'Oval.Collections.Memberships'
      reverseRelation :
        key : 'group'
        includeInJSON : false
    }, {
      type : Backbone.HasMany
      key : 'posts'
      relatedModel : 'Oval.Models.Post'
      relatedCollection : 'Oval.Collections.Posts'
      reverseRelation :
        key : 'group'
        includeInJSON : false
    }
  ]
Oval.Models.Group.setup()