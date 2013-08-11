CatWorld.CatsRoute = Ember.Route.extend
  model: ->
    CatWorld.Cat.find()
