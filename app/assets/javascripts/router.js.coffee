CatWorld.Router.map (match)->
  @resource 'cats', ->
    @route 'new'
    @route 'edit', { path: '/:cat_id/edit' }
