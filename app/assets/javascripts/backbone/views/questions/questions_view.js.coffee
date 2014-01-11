MedicalSimulation.Views.Questions ||= {}

class MedicalSimulation.Views.Questions.QuestionsView extends Backbone.View
  template: JST["backbone/templates/questions/questions"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
