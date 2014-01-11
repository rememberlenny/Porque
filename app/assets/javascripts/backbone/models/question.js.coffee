class MedicalSimulation.Models.Question extends Backbone.Model
  paramRoot: 'question'

  defaults:
    media: null
    questionprompt: null
    scenario_id: null

class MedicalSimulation.Collections.QuestionsCollection extends Backbone.Collection
  model: MedicalSimulation.Models.Question
  url: '/questions'
