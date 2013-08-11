CatWorld.IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo('cats')
