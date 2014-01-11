MedicalSimulation.Views.Questions ||= {}

class MedicalSimulation.Views.Questions.EditView extends Backbone.View
  template: JST["backbone/templates/questions/edit"]

  events:
    "submit #edit-questions": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (questions) =>
        @model = questions
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
