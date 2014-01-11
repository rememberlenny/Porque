class MedicalSimulation.Routers.QuestionsRouter extends Backbone.Router
  initialize: (options) ->
    @questions = new MedicalSimulation.Collections.QuestionsCollection()
    @questions.reset options.questions

  routes:
    "new"      : "newQuestions"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newQuestions: ->
    @view = new MedicalSimulation.Views.Questions.NewView(collection: @questions)
    $("#questions").html(@view.render().el)

  index: ->
    @view = new MedicalSimulation.Views.Questions.IndexView(questions: @questions)
    $("#questions").html(@view.render().el)

  show: (id) ->
    questions = @questions.get(id)

    @view = new MedicalSimulation.Views.Questions.ShowView(model: questions)
    $("#questions").html(@view.render().el)

  edit: (id) ->
    questions = @questions.get(id)

    @view = new MedicalSimulation.Views.Questions.EditView(model: questions)
    $("#questions").html(@view.render().el)
