CatWorld.RadioButton = Ember.View.extend
  tagName: "input"
  type: "radio"
  attributeBindings: [ "name", "type", "value", "checked:checked" ]
  click: ->
    @set("controller.gender", @$().val())
  checked: ( ->
    if @get('controller.gender') is undefined || null
      false
    else
      @get("value") == @get('controller.gender')
  ).property('controller.gender')
