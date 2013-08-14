CatWorld.CatsEditController = Ember.ObjectController.extend
  updateCat: ->
    cat = @get('model')
    cat.set('name', @get('name'))
    cat.set('breed', @get('breed'))
    cat.set('gender', @get('gender'))
    cat.save()
