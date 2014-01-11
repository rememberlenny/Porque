namespace :db do

  desc "Fill database with sample data"

  task populate: :environment do

    scenarios = Scenario.all
    questions = Question.all
    media = "test.jpg"

    # Scenario.create!( name:        "Scenario Name",
    #                   image:       media,
    #                   description: descriptionText )
    # 2.times do |n|
    #   name = "Scenario Name #{n+1}"
    #   Scenario.create!(  name: name,
    #                       image: media,
    #                       description: descriptionText )

    # end
    10.times do
      answerText = Faker::Lorem.sentence(rand(28..100))
      descriptionText = Faker::Lorem.sentence(rand(2..10))
      content = Faker::Lorem.sentence(rand(20..50))
      scenarios.each{ |scenario| scenario.questions.create!( questionprompt: content, media: media ) }
    end

    4.times do
          answerText = Faker::Lorem.sentence(rand(2..10))
    descriptionText = Faker::Lorem.sentence(rand(2..10))
    content = Faker::Lorem.sentence(rand(2..5))
      questions.each{ |question| question.answers.create!( answeroption: answerText ) }
    end


  end
end
