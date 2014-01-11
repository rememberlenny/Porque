MedicalSimulation.Views.Questions ||= {}

class MedicalSimulation.Views.Questions.ShowView extends Backbone.View
  template: JST["backbone/templates/questions/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
