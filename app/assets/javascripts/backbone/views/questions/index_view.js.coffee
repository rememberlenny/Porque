MedicalSimulation.Views.Questions ||= {}

class MedicalSimulation.Views.Questions.IndexView extends Backbone.View
  template: JST["backbone/templates/questions/index"]

  initialize: () ->
    @options.questions.bind('reset', @addAll)

  addAll: () =>
    @options.questions.each(@addOne)

  addOne: (questions) =>
    view = new MedicalSimulation.Views.Questions.QuestionsView({model : questions})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(questions: @options.questions.toJSON() ))
    @addAll()

    return this
