class MedicalSimulation.Models.Scenario extends Backbone.Model
  paramRoot: 'scenario'

  defaults:
    name: null
    decription: null
    image: null

class MedicalSimulation.Collections.ScenariosCollection extends Backbone.Collection
  model: MedicalSimulation.Models.Scenario
  url: '/scenarios'
