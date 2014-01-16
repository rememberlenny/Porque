namespace :db do

  desc "Fill database with sample data"

  task populate: :environment do

    scenario1 = Scenario.find(1)
    scenario2 = Scenario.find(2)
    scenario3 = Scenario.find(3)

    scenario1 = Scenario.create!( "name": "Case 1", "description": "Amy is a 15 yo girl (post menarchal, Risser 4) with progressive adolescent idiopathic scoliosis with a right thoracic curve from T5 to T10 measuring 60 degrees and a left lumbar curve from T11 to L3 measuring 45 degrees.", "image": "test.jpg");

    scenario1.questions.create!( "questionprompt": "Amy is a 15 yo girl (post menarchal, Risser 4) with progressive adolescent idiopathic scoliosis with a right thoracic curve from T5 to T10 measuring 60 degrees and a left lumbar curve from T11 to L3 measuring 45 degrees.<br><br> Due to her size, positioning was difficult and her legs had to be secured with tape and straps to prevent them from falling off. Screws were placed cephalocaudally from T2 to L3 (skipping T3 and T5) on the left side. On the right, screws were placed caudal-cephalically from L3, and at the point when T10 screw was in we lost SSEP monitoring in the distribution of the right posterior tibial nerve. <br><br> What will you do next?" )

    scenario1.questions.create!("questionprompt": "In what methods will you gain control of the room (pick one to create the best environment for this situation):")

    scenario1.questions.create!("questionprompt": "Check anesthetic/systemic conditions of the patient (pick an answer to pinpoint the possible reason for the IONM changes)")

    scenario1.questions.create!("questionprompt": "Seek technical/neurophysiologic reasons for IONM changes (pick an answer to pinpoint the possible reason for the IONM changes)")

    scenario1.questions.create!("questionprompt": "Seek surgery-related reasons for IONM changes (pick an answer to pinpoint the possible reason for the IONM changes):")

    scenario1.questions.create!("questionprompt": "After the SSEP’s returned to baseline, you:")

    scenario1.questions.create!("questionprompt": "Screws were then placed on the right side at T7-T9. <br> <br> Bilateral SSEP’s and MEP’s are noted to have been lost. <br> <br> Blood pressure, temperature and hematocrit are checked; pt. was given a unit of cell saver blood. Lower extremities were properly placed on the table" )

    scenario1.questions.create!("questionprompt": "What will you do next? (pick one to move forward in the intervention):")

    scenario1.questions.create!("questionprompt": "In what methods will you gain control of the room (pick one to create the best environment for this situation):")

    scenario1.questions.create!("questionprompt": "Check anesthetic/systemic conditions of the patient (pick an answer to pinpoint the possible reason for the IONM changes):")

    scenario1.questions.create!("questionprompt": "Seek technical/neurophysiologic reasons for IONM changes (please choose an answer for a possibility of the IONM returning to baseline):")

    scenario1.questions.create!("questionprompt": "Seek surgery-related reasons for IONM changes (please choose an answer to see if the IONM returns to baseline):")

    scenario1.questions.create!("questionprompt": "You should always consider consultation with a colleague. Now what?")

    scenario1.questions.create!("questionprompt": "A wake-up test was performed and she was noted to be moving the toes on both of her feet. She was put back to sleep and the MEP’s returned to baseline.<br><br>Would you consider: ")

    scenario1.questions.create!("questionprompt": "Screws were then placed at T6-T7 on the right side and a downgoing transverse process hook was placed at T2. No attempt to place screws at T3-T5 was made. ")

    scenario1.questions.create!("questionprompt": "At this point, would you consider (please choose one):")

    scenario1.questions.create!("questionprompt": "This case is complete.")



    # Scenario.create!( name:        "Scenario Name",
    #                   image:       media,
    #                   description: descriptionText )
    # 2.times do |n|
    #   name = "Scenario Name #{n+1}"
    #   Scenario.create!(  name: name,
    #                       image: media,
    #                       description: descriptionText )

    # end
    # scenarios.each do |scenario|
    #   10.times do
    #     answerText = Faker::Lorem.sentence(rand(28..100))
    #     descriptionText = Faker::Lorem.sentence(rand(2..10))
    #     content = Faker::Lorem.sentence(rand(20..50))
    #     scenario.questions.create!( questionprompt: content, media: media ) }
    #   end
    # end

    # 4.times do
    #   questionNumber = rand(1..30)
    #   answerText = Faker::Lorem.sentence(rand(2..10))
    #   responseText = Faker::Lorem.sentence(rand(2..10))
    #   descriptionText = Faker::Lorem.sentence(rand(2..10))
    # content = Faker::Lorem.sentence(rand(2..5))
    #   questions.each{ |question| question.answers.create!( answeroption: answerText, response: responseText, nextQuestion: questionNumber ) }
    # end


  end
end
