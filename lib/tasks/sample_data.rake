namespace :db do

  desc "Fill database with sample data"

  task populate: :environment do
    answerText = Faker::Lorem.sentence(1)
    descriptionText = Faker::Lorem.sentence(2)
    content = Faker::Lorem.sentence(5)
    scenarios = Scenario.all
    questions = Question.all
    media = "test.jpg"

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
      scenarios.each{ |scenario| scenario.questions.create!( questionprompt: content, media: media ) }
    end

    4.times do
      questions.each{ |question| question.answers.create!( answeroption: answerText ) }
    end


  end
end
