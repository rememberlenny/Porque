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


# scenario1 = Scenario.find(1)
#     scenario2 = Scenario.find(2)
#     scenario3 = Scenario.find(3)

    scenario1 = Scenario.create!(
      name: "Case 1",
      description: "Amy is a 15 yo girl (post menarchal, Risser 4) with progressive adolescent idiopathic scoliosis with a right thoracic curve from T5 to T10 measuring 60 degrees and a left lumbar curve from T11 to L3 measuring 45 degrees.",
      image: "https://s3.amazonaws.com/LKBG-TG/columbia/Image+2+-+X-Ray.jpg")

    # Intro 1
    scenario1.intro.create!(
      content: "In order to assist in facilitating the importance of utilizing this checklist and being aware of the various steps and choices to make at the time of a deviation from baseline in intraoperative monitoring, we have created this web simulator.<br><br>Please note that the presented cases are based on a true case although deidentified as per HIPAA regulations."
    )

    # Intro 3
    scenario1.intro.create!(
      content: "<iframe width='560' height='315' src='//www.youtube.com/v/biwNVnPF25E&start=35&end=60&version=3&autoplay=1' frameborder='0' allowfullscreen></iframe> <br><br> Amy is a 15 yo girl (post menarchal, Risser 4) with progressive adolescent idiopathic scoliosis with a right thoracic curve from T5 to T10 measuring 60 degrees and a left lumbar curve from T11 to L3 measuring 45 degrees."
    )

    # Intro 2
    scenario1.intro.create!(
      content: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+2+-+X-Ray.jpg'> <br><br> Due to her size, positioning was difficult and her legs had to be secured with tape and straps to prevent them from falling off. Screws were placed cephalocaudally from T2 to L3 (skipping T3 and T5) on the left side. On the right, screws were placed caudal-cephalically from L3, and at the point when T10 screw was in we lost SSEP monitoring in the distribution of the right posterior tibial nerve."
    )

    # Question 1
    scenario1.questions.create!(
      questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+3.JPG'><br><br>What will you do next? (pick one to move forward in the intervention):"
      )
    #Answers 1
    scenario1.questions.last.answers.create!(
      answeroption:"Gain control of the room",
      response:"Proceed",
      nextQuestion:"2"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Check anesthetic/systemic conditions of the patient",
      response:"Proceed",
      nextQuestion:"3"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Seek technical/neurophysiologic reasons for IONM changes",
      response:"Proceed",
      nextQuestion:"4"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Seek surgery-related reasons for IONM changes",
      response:"Proceed",
      nextQuestion:"5"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Consider consultation with a colleague",
      response:"You should always consider consultation with a colleague. What else can you and your colleague do in order to pinpoint the reason to bring the IONM back to baseline?",
      nextQuestion:"1"
    )

    # Question 2
    scenario1.questions.create!(
      questionprompt: '<iframe width="560" height="315" src="//www.youtube.com/embed/8yU2TqSVtTY?autoplay=1" frameborder="0" allowfullscreen></iframe><br><br>In what methods will you gain control of the room (pick one to create the best environment for this situation):')
    # Answer 2
    scenario1.questions.last.answers.create!(
      answeroption:"Stop case and announce to the room",
      response:"Now everyone is notified of the changes. How else can you gain control of the room?",
      nextQuestion:"2"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Eliminate extraneous stimuli (music, conversations, etc.)",
      response:"<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+3.5.jpg'><br><br>The music has been stopped and you have eliminated extraneous stimuli.<br><br>How else can you gain control of the room?",
      nextQuestion:"2"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Summon ATTENDING anesthesiologist and SENIOR neurophysiologist/neurologist for support.",
      response:"You have the attention of the attending anesthesiologist and senior neurophysiologist/neurologist now. How else can you gain control of the room?",
      nextQuestion:"2"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Anticipate need for intraoperative imaging if not readily available",
      response:"How else can you gain control of the room? [",
      nextQuestion:"2"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"All of the above",
      response:"Now you have everyone’s attention and ready to take further action steps.",
      nextQuestion:"1"
    )

    #Q3
    scenario1.questions.create!(
      questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+4.jpg'><br><br>Check anesthetic/systemic conditions of the patient (pick an answer to pinpoint the possible reason for the IONM changes)")
    #A3
    scenario1.questions.last.answers.create!(
      answeroption:"Optimize MAP",
      response:"Blood pressure is normal; what else will you check?",
      nextQuestion:"3"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Optimize Hematocrit",
      response:"There is no abnormality; what else will you check?",
      nextQuestion:"3"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Optimize Blood pH",
      response:"There is no abnormality; what else will you check?",
      nextQuestion:"3"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Seek Normothermia",
      response:"There is no abnormality; what else will you check?",
      nextQuestion:"3"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Discuss POTENTIAL need for eventual wake-up test with ATTENDING anesthesiologist",
      response:"Need discussed; what else will you check?",
      nextQuestion:"3"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"All of the Above",
      response:"All these points are vital to check; however there are no )systemic abnormalities found. IONM has not returned to baseline. What
      else? ",
      nextQuestion:"1"
    )

    #Q4
    scenario1.questions.create!(
      questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+5.JPG'><br><br>Seek technical/neurophysiologic reasons for IONM changes (pick an answer to pinpoint the possible reason for the IONM changes)")
    #A4
    scenario1.questions.last.answers.create!(
      answeroption:"Discuss status of inhalational agents with anesthesia",
      response:"IONM has not returned to baseline. What else?",
      nextQuestion:"4"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Check extent of neuromuscular blockade",
      response:"IONM has not returned to baseline. What else?",
      nextQuestion:"4"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Check electrode placement",
      response:"During the process of checking all the electrode placements, you found that the right leg had fallen off the table! You readjusted the leg and the SSEP’s returned to baseline!",
      nextQuestion:"6"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Determine pattern and timing of signal changes",
      response:"IONM has not returned to baseline. What else?",
      nextQuestion:"4"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Check limb/neck positioning; check limb position on table especially in unilateral loss",
      response:"<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+6.JPG'><br><br>You found that the right leg had fallen off the table! You readjusted the leg and the SSEP’s returned to baseline!",
      nextQuestion:"6"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"All of the Above",
      response:"<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+6.JPG'><br><br><ul>You checked all of the following: <li>Discuss status of inhalational agents with anesthesia</li> <li>Check extent of neuromuscular blockade</li> <li>Check electrode placement</li> <li>Determine pattern and timing of signal changes</li> <li>Check limb/neck positioning; check limb position on table especially in unilateral loss</li> <li>As a result, you found that the right leg had fallen off the table! You readjusted the leg and the SSEP’s returned to baseline.</li></ul>",
      nextQuestion:"6"
    )

    #Q5
    scenario1.questions.create!(
      questionprompt: " <iframe width='560' height='315' src='//www.youtube.com/v/yPZbiG7OdzI&start=0&end=19&version=3&autoplay=1' frameborder='0' allowfullscreen></iframe><br><br> Seek surgery-related reasons for IONM changes (pick an answer to pinpoint the possible reason for the IONM changes):")
    #A5
    scenario1.questions.last.answers.create!(
      answeroption:"Discuss events and actions just prior to signal loss and consider reversing actions (e.g.; remove traction/rods/screws, decrease distraction, or probe for breech).",
      response:"IONM has not returned to baseline. What else? ",
      nextQuestion:"5"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Evaluate for spinal cord compression and examine osteotomy/laminotomy sites. ",
      response:"Upon examination, everything looks normal. What else? ",
      nextQuestion:"5"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Both of the Above",
      response:"After checking for mechanical causes for IONM change, it did not return to baseline. What else? ",
      nextQuestion:"1"
    )

    #Q6
    scenario1.questions.create!(
      questionprompt: "<iframe width='560' height='315' src='//www.youtube.com/embed/CJYxjjP846U?autoplay=1' frameborder='0' allowfullscreen></iframe>
<br><br>After the SSEP’s returned to baseline, you:")
    #A6
    scenario1.questions.last.answers.create!(
      answeroption:"Continue on with the surgery",
      response:"After discussion with another attending surgeon, we continued on with the surgery. ",
      nextQuestion:"7"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Stage and continue on another day",
      response:"After discussion with another attending surgeon, we continued on with the surgery. ",
      nextQuestion:"7"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Discuss this decision with another attending surgeon",
      response:"Discussing and involving another attending surgeon is always important. It was decided to continue on with the surgery.",
      nextQuestion:"7"
    )

    #Q7
    scenario1.questions.create!(
      questionprompt: "Screws were then placed on the right side at T7-T9. <br> <br> Bilateral SSEP’s and MEP’s are noted to have been lost. <br> <br> Blood pressure, temperature and hematocrit are checked; pt. was given a unit of cell saver blood. Lower extremities were properly placed on the table" )
    #A7
    scenario1.questions.last.answers.create!(
      answeroption:"Next",
      response:"<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+10.jpg'>",
      nextQuestion:"8"
    )

    #Q8
    scenario1.questions.create!(
      questionprompt: "<iframe width='560' height='315' src='//www.youtube.com/v/K1YXuTznM1c&start=3&version=3&autoplay=1' frameborder='0' allowfullscreen></iframe><br><br>What will you do next? (pick one to move forward in the intervention):")
    #A8
    scenario1.questions.last.answers.create!(
      answeroption:"Gain control of the room",
      nextQuestion:"9"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Check anesthetic/systemic conditions of the patient",
      nextQuestion:"10"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Seek technical/neurophysiologic reasons for IONM changes",
      nextQuestion:"11"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Seek surgery-related reasons for IONM changes",
      nextQuestion:"12"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Consider consultation with a colleague",
      response:"<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+7.jpg'><br><br> You should always consider consultation with a colleague. Now what?",
      nextQuestion:"8"
    )

    #Q9
    scenario1.questions.create!(
      questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+11.jpg'><br><br>In what methods will you gain control of the room (pick one to create the best environment for this situation):")
    #A9
    scenario1.questions.last.answers.create!(
      answeroption:"Stop case and announce to room",
      response:"Now everyone is notified of the changes. How else can you gain control of the room?",
      nextQuestion:"9"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Eliminate extraneous stimuli (music, conversations, etc.)",
      response:"The music has been stopped and you have eliminated extraneous stimuli. How else can you gain control of the room?",
      nextQuestion:"9"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Summon ATTENDING anesthesiologist and SENIOR neurophysiologist/neurologist support",
      response:"You have the attention of the attending anesthesiologist and senior neurophysiologist/neurologist now. How else can you gain control of the room?",
      nextQuestion:"9"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Anticipate need for intraoperative imaging if not readily available",
      response:"How else can you gain control of the room? [This choice should show up on the side] ",
      nextQuestion:"9"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"All of the above",
      response:"Now you have everyone’s attention and ready to take further action steps.",
      nextQuestion:"8"
    )

    #Q10
    scenario1.questions.create!(
      questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+12.jpg'><br><br>Check anesthetic/systemic conditions of the patient (pick an answer to pinpoint the possible reason for the IONM changes):")
    #A10
    scenario1.questions.last.answers.create!(
      answeroption:"Optimize MAP",
      response:"Even though it was already determined that the blood pressure, temperature, blood pH level, and hematocrit level were not abnormal, revisiting systemic considerations and confirming there are no changes is considered good practice. What else can be done? ",
      nextQuestion:"10"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Optimize Hematocrit",
      response:"Even though it was already determined that the blood pressure, temperature, blood pH level, and hematocrit level were not abnormal, revisiting systemic considerations and confirming there are no changes is considered good practice. What else can be done? ",
      nextQuestion:"10"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Optimize Blood pH",
      response:"Even though it was already determined that the blood pressure, temperature, blood pH level, and hematocrit level were not abnormal, revisiting systemic considerations and confirming there are no changes is considered good practice. What else can be done? ",
      nextQuestion:"10"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Seek Normothermia",
      response:"Even though it was already determined that the blood pressure, temperature, blood pH level, and hematocrit level were not abnormal, revisiting systemic considerations and confirming there are no changes is considered good practice. What else can be done? ",
      nextQuestion:"10"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Discuss POTENTIAL need for eventual wake-up test with ATTENDING anesthesiologist",
      response:"Discussion of a potential wake-up test with the attending anesthesiologist is important at this point.<br><br>Please note that revisiting systemic considerations to confirm that they are optimized. ",
      nextQuestion:"13"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"All of the Above",
      response:"Even though it was already determined that the blood pressure, temperature, blood pH level, and hematocrit level were not abnormal, revisiting systemic considerations and confirming there are no changes is considered good practice.<br><br>Discussion of potential wake-up test with attending anesthesiologist is important at this point. ",
      nextQuestion:"13"
    )

    #Q11
    scenario1.questions.create!(
      questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+13.JPG'><br><br>Seek technical/neurophysiologic reasons for IONM changes (please choose an answer for a possibility of the IONM returning to baseline):")
    #A11
    scenario1.questions.last.answers.create!(
      answeroption:"Discuss status of inhalational agents with anesthesia",
      response:"IONM has not returned to baseline. What else? ",
      nextQuestion:"11"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Check extent of neuromuscular blockade",
      response:"IONM has not returned to baseline. What else? ",
      nextQuestion:"11"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Check electrode placement",
      response:"IONM has not returned to baseline. What else? ",
      nextQuestion:"11"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Determine pattern and timing of signal changes",
      response:"IONM has not returned to baseline. What else? ",
      nextQuestion:"11"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Check limb/neck positioning; check limb position on table especially in unilateral loss",
      response:"IONM has not returned to baseline. What else? ",
      nextQuestion:"11"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"All of the Above",
      response:"It is important to consider all these choices, however did not return MEP’s to baseline. What next? ",
      nextQuestion:"8"
    )

    #Q12
    scenario1.questions.create!(
      questionprompt: "<iframe width='560' height='315' src='//www.youtube.com/v/yPZbiG7OdzI&start=0&end=19&version=3&autoplay=1' frameborder='0' allowfullscreen></iframe><br><br>Seek surgery-related reasons for IONM changes (please choose an answer to see if the IONM returns to baseline):")
    #A12
    scenario1.questions.last.answers.create!(
      answeroption:"Discuss events and actions just prior to signal loss and consider reversing actions (e.g.; remove traction/rods/screws, decrease distraction, or probe for breech).",
      response:"IONM has not returned to baseline. What else? ",
      nextQuestion:"12"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Evaluate for spinal cord compression and examine osteotomy/laminotomy sites. ",
      response:"Upon examination, everything looks normal. What else? ",
      nextQuestion:"12"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Both of the Above",
      response:"After clearing the mechanical causes for IONM change, it did not return to baseline. What else? ",
      nextQuestion:"8"
    )

    #Q13
    scenario1.questions.create!(
      questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+14.JPG'><br><br>You should always consider consultation with a colleague. Now what?")
    #A13
    scenario1.questions.last.answers.create!(
      answeroption:"IV steroid protocol: 30mg/kg in 15 min for 1st hour, then 5.4 mg/kg/hr for 23 hrs",
      response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
      nextQuestion:"14"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"IV lidocaine 2mg/kg if blood flow to the spinal cord is the suspected reason for IOM changes",
      response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
      nextQuestion:"14"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Wake-up test",
      response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
      nextQuestion:"14"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Post-op imaging (CT, MRI, CT Myelography)",
      response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
      nextQuestion:"14"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Continuing Surgery",
      response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
      nextQuestion:"14"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Staging and continuing another day",
      response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
      nextQuestion:"14"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Discussing this decision with another attending surgeon",
      response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
      nextQuestion:"14"
    )

    #Q14
    scenario1.questions.create!(
      questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+15.JPG'><br><br>A wake-up test was performed and she was noted to be moving the toes on both of her feet. She was put back to sleep and the MEP’s returned to baseline.<br><br>Would you consider: ")
    #A14
    scenario1.questions.last.answers.create!(
      answeroption:"Continuing on with the surgery",
      response:"After discussion with another attending surgeon, we decided to continue on with the surgery. ",
      nextQuestion:"15"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Staging and continuing on another day",
      response:"After discussion with another attending surgeon, we decided to continue on with the surgery. ",
      nextQuestion:"15"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Discussing this decision with another attending surgeon. ",
      response:"After discussion with another attending surgeon, we decided to continue on with the surgery. ",
      nextQuestion:"15"
    )

    #Q15
    scenario1.questions.create!(
      questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+16.JPG'><br><br>Screws were then placed at T6-T7 on the right side and a downgoing transverse process hook was placed at T2. No attempt to place screws at T3-T5 was made. ")
    #A15
    scenario1.questions.last.answers.create!(
      answeroption:"See results",
      response:"Bilateral MEP’s and left-sided SSEP’s were severely diminished. ",
      nextQuestion:"16"
    )

    #Q16
    scenario1.questions.create!(
      questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+17.JPG'><br><br>At this point, would you consider (please choose one):")
    #A16
    scenario1.questions.last.answers.create!(
      answeroption:"Continuing on with the surgery",
      response:"Due to the second loss of MEP’s without a clear explanation, the case was aborted. Pt was transferred immediately to the MRI scanner for an urgent evaluation. The pt had no neural deficits and the MRI was normal. After discussion with another surgeon, discussing with the family in depth, the case was staged for another day. ",
      nextQuestion:"17"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Staging and continuing on another day",
      response:"Due to the second loss of MEP’s without a clear explanation, the case was aborted. Pt was transferred immediately to the MRI scanner for an urgent evaluation. The pt had no neural deficits and the MRI was normal. After discussion with another surgeon, discussing with the family in depth, the case was staged for another day. ",
      nextQuestion:"17"
    )
    scenario1.questions.last.answers.create!(
      answeroption:"Discussing this decision with another attending surgeon. ",
      response:"Due to the second loss of MEP’s without a clear explanation, the case was aborted. Pt was transferred immediately to the MRI scanner for an urgent evaluation. The pt had no neural deficits and the MRI was normal. After discussion with another surgeon, discussing with the family in depth, the case was staged for another day. ",
      nextQuestion:"17"
    )

    #Q17
    scenario1.questions.create!(
      questionprompt: "This case is complete.")
    #A17
    scenario1.questions.last.answers.create!(
      answeroption:"Select another case",
      nextQuestion:"[return to root]"
    )
