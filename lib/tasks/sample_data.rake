namespace :db do

  desc "Fill database with sample data"

  task populate: :environment do
    answerText = Faker::Lorem.sentence(1)
    descriptionText = Faker::Lorem.sentence(2)
    content = Faker::Lorem.sentence(5)
    scenario = Scenario.all
    questions = Question.all
    media = "text.jpg"

    Scenario.create!( name:        "Scenario Name",
                      image:       media,
                      description: descriptionText )
    2.times do |n|
      name = "Scenario Name #{n+1}"
      Scenario.create!(  name: name,
                          image: media,
                          description: descriptionText )

    end
    10.times do
      questions.create!(questionprompt: content, media: media, scenario_id: 1)
      questions.create!(questionprompt: content, media: media, scenario_id: 2)
      questions.create!(questionprompt: content, media: media, scenario_id: 3)
    end

    4.times do
      questions.each{ |question| question.answers.create!( answeroption: "answerText" ) }
    end


  end
end
