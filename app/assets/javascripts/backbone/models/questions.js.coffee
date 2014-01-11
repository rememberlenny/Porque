class MedicalSimulation.Models.Questions extends Backbone.Model
  paramRoot: 'question'

  defaults:
    question: null
    media: null
    answerText: null
    state: null

class MedicalSimulation.Collections.QuestionsCollection extends Backbone.Collection
  model: MedicalSimulation.Models.Questions
  url: '/questions'
