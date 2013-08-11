CatWorld.CatsNewController = Ember.Controller.extend
  createCat: ->
    cat = CatWorld.Cat.createRecord
      name: @get('name')
      breed: @get('breed')
      gender: @get('gender')
    cat.save()
