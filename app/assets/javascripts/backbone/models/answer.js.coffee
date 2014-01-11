class MedicalSimulation.Models.Answer extends Backbone.Model
  paramRoot: 'answer'

  defaults:
    answeroption: null
    question_id: null

class MedicalSimulation.Collections.AnswersCollection extends Backbone.Collection
  model: MedicalSimulation.Models.Answer
  url: '/answers'
