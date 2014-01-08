# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  # create_table "answers", force: true do |t|
  #   t.string   "answeroption"
  #   t.integer  "question_id"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end

  # create_table "questions", force: true do |t|
  #   t.string   "media"
  #   t.text     "questionprompt"
  #   t.integer  "scenario_id"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end

  # create_table "scenarios", force: true do |t|
  #   t.string   "name"
  #   t.string   "description"
  #   t.string   "image"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end


scenario = Scenario.create(
  [
    { name:        'Case 1',
      description: 'Amy is a 15 yo girl (post menarchal, Risser 4) with progressive adolescent idiopathic scoliosis with a right thoracic curve from T5 to T10 measuring 60 degrees and a left lumbar curve from T11 to L3 measuring 45 degrees.',
      image:       'test.jpg' },
    { name:        'Case 2',
      description: 'Matthew is a 12yoM with severe scoliosis and congenital muscular dystrophy.
His x-ray shows curves measuring 94 and 101 degrees bending down only to 84 and 70 degrees.',
      image:       'test.jpg' },
    { name:        'Case 3',
      description: 'Emily is a 12 yoF with progressive adolescent idiopathic scoliosis showing a curve to the left T1-T5 of 30 degrees that bends to 29 to the right, T6-T12 of 51 degrees that bends to 40, and to the left L1-L4 of 20 degrees that bends to 9.',
      image:       'test.jpg' },
  ]
)

