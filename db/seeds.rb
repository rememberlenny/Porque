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


  #Scenario 1
    scenario1 = Scenario.create!(
      name: "Case 1",
      description: "Amy is a 15 yo girl (post menarchal, Risser 4) with progressive adolescent idiopathic scoliosis with a right thoracic curve from T5 to T10 measuring 60 degrees and a left lumbar curve from T11 to L3 measuring 45 degrees.",
      image: "https://s3.amazonaws.com/LKBG-TG/columbia/Image+2+-+X-Ray.jpg")

    # Intro
      # Intro 1
      scenario1.intro.create!(
        content: "In order to assist in facilitating the importance of utilizing this checklist and being aware of the various steps and choices to make at the time of a deviation from baseline in intraoperative monitoring, we have created this web simulator.<br><br>Please note that the presented cases are based on a true case although deidentified as per HIPAA regulations."
      )

      # Intro 3
      scenario1.intro.create!(
        content: "<iframe width='560' height='315' src='//www.youtube.com/v/biwNVnPF25E&start=35&end=60&version=3&autoplay=1' frameborder='0' allowfullscreen></iframe> Amy is a 15 yo girl (post menarchal, Risser 4) with progressive adolescent idiopathic scoliosis with a right thoracic curve from T5 to T10 measuring 60 degrees and a left lumbar curve from T11 to L3 measuring 45 degrees."
      )

      # Intro 2
      scenario1.intro.create!(
        content: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+2+-+X-Ray.jpg'> Due to her size, positioning was difficult and her legs had to be secured with tape and straps to prevent them from falling off. Screws were placed cephalocaudally from T2 to L3 (skipping T3 and T5) on the left side. On the right, screws were placed caudal-cephalically from L3, and at the point when T10 screw was in we lost SSEP monitoring in the distribution of the right posterior tibial nerve."
      )

    # Question 1
      scenario1.questions.create!(
        questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+3.JPG'> What will you do next? (pick one to move forward in the intervention):"
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
        questionprompt: '<iframe width="560" height="315" src="//www.youtube.com/embed/8yU2TqSVtTY?autoplay=1" frameborder="0" allowfullscreen></iframe>In what methods will you gain control of the room (pick one to create the best environment for this situation):')
      # Answer 2
      scenario1.questions.last.answers.create!(
        answeroption:"Stop case and announce to the room",
        response:"Now everyone is notified of the changes. How else can you gain control of the room?",
        nextQuestion:"2"
      )
      scenario1.questions.last.answers.create!(
        answeroption:"Eliminate extraneous stimuli (music, conversations, etc.)",
        response:"<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+3.5.jpg'>The music has been stopped and you have eliminated extraneous stimuli.<br><br>How else can you gain control of the room?",
        nextQuestion:"2"
      )
      scenario1.questions.last.answers.create!(
        answeroption:"Summon ATTENDING anesthesiologist and SENIOR neurophysiologist/neurologist for support.",
        response:"You have the attention of the attending anesthesiologist and senior neurophysiologist/neurologist now. How else can you gain control of the room?",
        nextQuestion:"2"
      )
      scenario1.questions.last.answers.create!(
        answeroption:"Anticipate need for intraoperative imaging if not readily available",
        response:"How else can you gain control of the room?",
        nextQuestion:"2"
      )
      scenario1.questions.last.answers.create!(
        answeroption:"All of the above",
        response:"Now you have everyone’s attention and ready to take further action steps.",
        nextQuestion:"1"
      )

    #Q3
      scenario1.questions.create!(
        questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+4.jpg'>Check anesthetic/systemic conditions of the patient (pick an answer to pinpoint the possible reason for the IONM changes)")
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
        questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+5.JPG'>Seek technical/neurophysiologic reasons for IONM changes (pick an answer to pinpoint the possible reason for the IONM changes)")
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
        response:"<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+6.JPG'>You found that the right leg had fallen off the table! You readjusted the leg and the SSEP’s returned to baseline!",
        nextQuestion:"6"
      )
      scenario1.questions.last.answers.create!(
        answeroption:"All of the Above",
        response:"<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+6.JPG'><ul>You checked all of the following: <li>Discuss status of inhalational agents with anesthesia</li> <li>Check extent of neuromuscular blockade</li> <li>Check electrode placement</li> <li>Determine pattern and timing of signal changes</li> <li>Check limb/neck positioning; check limb position on table especially in unilateral loss</li> <li>As a result, you found that the right leg had fallen off the table! You readjusted the leg and the SSEP’s returned to baseline.</li></ul>",
        nextQuestion:"6"
      )

    #Q5
      scenario1.questions.create!(
        questionprompt: " <iframe width='560' height='315' src='//www.youtube.com/v/yPZbiG7OdzI&start=0&end=19&version=3&autoplay=1' frameborder='0' allowfullscreen></iframe> Seek surgery-related reasons for IONM changes (pick an answer to pinpoint the possible reason for the IONM changes):")
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
        questionprompt: "<iframe width='560' height='315' src='//www.youtube.com/embed/CJYxjjP846U?autoplay=1' frameborder='0' allowfullscreen></iframe>After the SSEP’s returned to baseline, you:")
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
        questionprompt: "<iframe width='560' height='315' src='//www.youtube.com/v/K1YXuTznM1c&start=3&version=3&autoplay=1' frameborder='0' allowfullscreen></iframe>What will you do next? (pick one to move forward in the intervention):")
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
        response:"<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+7.jpg'> You should always consider consultation with a colleague. Now what?",
        nextQuestion:"8"
      )

    #Q9
      scenario1.questions.create!(
        questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+11.jpg'>In what methods will you gain control of the room (pick one to create the best environment for this situation):")
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
        response:"How else can you gain control of the room?",
        nextQuestion:"9"
      )
      scenario1.questions.last.answers.create!(
        answeroption:"All of the above",
        response:"Now you have everyone’s attention and ready to take further action steps.",
        nextQuestion:"8"
      )

    #Q10
      scenario1.questions.create!(
        questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+12.jpg'>Check anesthetic/systemic conditions of the patient (pick an answer to pinpoint the possible reason for the IONM changes):")
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
        questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+13.JPG'>Seek technical/neurophysiologic reasons for IONM changes (please choose an answer for a possibility of the IONM returning to baseline):")
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
        questionprompt: "<iframe width='560' height='315' src='//www.youtube.com/v/yPZbiG7OdzI&start=0&end=19&version=3&autoplay=1' frameborder='0' allowfullscreen></iframe>Seek surgery-related reasons for IONM changes (please choose an answer to see if the IONM returns to baseline):")
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
        questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+14.JPG'>You should always consider consultation with a colleague. Now what?")
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
        questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+15.JPG'>A wake-up test was performed and she was noted to be moving the toes on both of her feet. She was put back to sleep and the MEP’s returned to baseline.<br><br>Would you consider: ")
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
        questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+16.JPG'>Screws were then placed at T6-T7 on the right side and a downgoing transverse process hook was placed at T2. No attempt to place screws at T3-T5 was made. ")
      #A15
      scenario1.questions.last.answers.create!(
        answeroption:"See results",
        response:"Bilateral MEP’s and left-sided SSEP’s were severely diminished. ",
        nextQuestion:"16"
      )

    #Q16
      scenario1.questions.create!(
        questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+17.JPG'>At this point, would you consider (please choose one):")
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

  #Scenario 2
    scenario2 = Scenario.create!(
      name: "Case 2",
      description: "Amy is a 15 yo girl (post menarchal, Risser 4) with progressive adolescent idiopathic scoliosis with a right thoracic curve from T5 to T10 measuring 60 degrees and a left lumbar curve from T11 to L3 measuring 45 degrees.",
      image: "https://s3.amazonaws.com/LKBG-TG/columbia/Image+25.jpg")

    # Intro
      # Intro 1
      # Page 26
      scenario2.intro.create!(
        content: "<imgr src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+20+-+X-Ray.jpg'>In order to assist in facilitating the importance of utilizing this checklist and being aware of the various steps and choices to make at the time of a deviation from baseline in intraoperative monitoring, we have created this web simulator.<br><br>Please note that the presented cases are based on a true case although deidentified as per HIPAA regulations."
      )

      # Intro 1
      # Page 26
      scenario2.intro.create!(
        content: "Matthew is a 12yoM with severe scoliosis and congenital muscular dystrophy. <br><br>His x-ray shows curves measuring 94 and 101 degrees bending down only to 84 and 70 degrees. "
      )

      # Intro 2
      # Page 26
      scenario2.intro.create!(
        content: "Pt. is brought in for a posterior spinal instrumentation and fusion. After placing pedicle screws, a Vitallium rod was placed under the skin on the right side. Another Vitallium rod was then tunneled under the muscle on the left-side, placed in the proximal screws and attached distally. <br><br>At this time, you are alerted that motor evoked potential monitoring is lost. "
      )

    # Question
      # Question 1
        # Page 27
        scenario2.questions.create!(
          questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+21.JPG'>What will you do next? (pick one to move forward in the intervention):"
          )
        #Answers 1
        scenario2.questions.last.answers.create!(
          answeroption:"Gain control of the room",
          response:"Proceed",
          nextQuestion:"2"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check anesthetic/systemic conditions of the patient",
          response:"Proceed",
          nextQuestion:"3"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Seek technical/neurophysiologic reasons for IONM changes",
          response:"Proceed",
          nextQuestion:"4"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Seek surgery-related reasons for IONM changes",
          response:"Proceed",
          nextQuestion:"5"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Consider consultation with a colleague",
          response:"You should always consider consultation with a colleague. What else can you and your colleague do in order to pinpoint the reason to bring the IONM back to baseline?",
          nextQuestion:"1"
        )

      # Question 2
        # Page 28
        scenario2.questions.create!(
          questionprompt: "<iframe width='560' height='315' src='//www.youtube.com/v/a7FMQ9QuMng?autoplay=1' frameborder='0' allowfullscreen></iframe>In what methods will you gain control of the room (pick one to create the best environment for this situation):"
          )

        # Answer 2
        scenario2.questions.last.answers.create!(
          answeroption:"Stop case and announce to the room",
          response:"Now everyone is notified of the changes. How else can you gain control of the room?",
          nextQuestion:"2"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Eliminate extraneous stimuli (music, conversations, etc.)",
          response:"<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+3.5.jpg'> The music has been stopped and you have eliminated extraneous stimuli.<br><br>How else can you gain control of the room?",
          nextQuestion:"2"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Summon ATTENDING anesthesiologist and SENIOR neurophysiologist/neurologist for support.",
          response:"You have the attention of the attending anesthesiologist and senior neurophysiologist/neurologist now. How else can you gain control of the room?",
          nextQuestion:"2"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Anticipate need for intraoperative imaging if not readily available",
          response:"How else can you gain control of the room?",
          nextQuestion:"2"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"All of the above",
          response:"Now you have everyone’s attention and ready to take further action steps.",
          nextQuestion:"1"
        )

      # Question 3
        # Page 29
        scenario2.questions.create!(
          questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+12.jpg'>Check anesthetic/systemic conditions of the patient (pick an answer to pinpoint the possible reason for the IONM changes):"
          )
        scenario2.questions.last.answers.create!(
          answeroption:"Optimize MAP",
          response:"Blood pressure is normal; what else will you check?",
          nextQuestion:"3"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Optimize Hematocrit",
          response:"There is no abnormality; what else will you check?",
          nextQuestion:"3"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Optimize Blood pH",
          response:"There is no abnormality; what else will you check?",
          nextQuestion:"3"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Seek Normothermia",
          response:"There is no abnormality; what else will you check?",
          nextQuestion:"3"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss POTENTIAL need for eventual wake-up test with ATTENDING anesthesiologist",
          response:"Need discussed; what else will you check?",
          nextQuestion:"3"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"All of the Above",
          response:"All these points are vital to check; however there are no )systemic abnormalities found. IONM has not returned to baseline. What
          else? ",
          nextQuestion:"1"
        )

      # Question 4
        # Page 30
        scenario2.questions.create!(
          questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+22.JPG'>Seek technical/neurophysiologic reasons for IONM changes (pick an answer to pinpoint the possible reason for the IONM changes):"
          )
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss status of inhalational agents with anesthesia",
          response:"IONM has not returned to baseline. What else?",
          nextQuestion:"4"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check extent of neuromuscular blockade",
          response:"IONM has not returned to baseline. What else?",
          nextQuestion:"4"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check electrode placement",
          response:"All electrodes are placed properly. What else? ",
          nextQuestion:"4"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Determine pattern and timing of signal changes",
          response:"IONM has not returned to baseline. What else?",
          nextQuestion:"4"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check limb/neck positioning; check limb position on table especially in unilateral loss",
          response:"Limb and neck are positioned properly. What else? ",
          nextQuestion:"4"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"All of the Above",
          response:"It is important to continue revisiting systemic considerations and confirm that they are optimized. However, the IONM has not yet returned to baseline. ",
          nextQuestion:"6"
        )

      # Question 5
        # Page 31
        scenario2.questions.create!(
          questionprompt: "<iframe width='560' height='315' src='//www.youtube.com/v/yPZbiG7OdzI&start=0&end=19&version=3&autoplay=1' frameborder='0' allowfullscreen></iframe> Seek surgery-related reasons for IONM changes (pick an answer to pinpoint the possible reason for the IONM changes):"
          )
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss events and actions just prior to signal loss and consider reversing actions (e.g.; remove traction/rods/screws, decrease distraction, or probe for breech).",
          response:"After removing the rod, you removed all the screws at the proximal point. You probed and found that there was a medial breach.",
          nextQuestion:"6"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Evaluate for spinal cord compression and examine osteotomy/laminotomy sites. ",
          response:"Upon examination, everything looks normal. What else? ",
          nextQuestion:"5"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Both of the Above",
          response:"After removing the rod, you removed all the screws at the proximal point. You probed and found that there was a medial breach. You are alerted that the motor evoked potential monitoring had rapidly improved. ",
          nextQuestion:"6"
        )

      # Question 6
        # Page 33
        scenario2.questions.create!(
          questionprompt: "<iframe width='560' height='315' src='//www.youtube.com/v/lO0rLFW_tjo&start=40&end=80&version=3&autoplay=1' frameborder='0' allowfullscreen></iframe> After the IONM returns to baseline, you:"
          )

        scenario2.questions.last.answers.create!(
          answeroption:"Continue on with the surgery",
          response:"After discussion with another attending surgeon, we continued on with the surgery. ",
          nextQuestion:"7"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Stage and continue on another day",
          response:"After discussion with another attending surgeon, we continued on with the surgery. ",
          nextQuestion:"7"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss this decision with another attending surgeon",
          response:"Discussing and involving another attending surgeon is always important. It was decided to continue on with the surgery.",
          nextQuestion:"7"
        )

      # Question 7
        # Page 36
        scenario2.questions.create!(
          questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+25.jpg'>The case moved forward and instead of pedicle screws, a claw was placed on the right side. A distal rod was placed and connected to the pelvic fixation. <br><br> A formal fusion was done. There motor evoked potential monitoring had not changed after improving. "
          )

        scenario2.questions.last.answers.create!(
            answeroption:"Next",
            response:"Continue",
            nextQuestion:"8"
          )

      # Question 8

        # Page 37
        scenario2.questions.create!(
          questionprompt: "<img src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+26.JPG'>At this point you would:"
          )

        scenario2.questions.last.answers.create!(
          answeroption:"Give IV steroid protocol: 30mg/kg in 15 min for 1st hour, then 5.4 mg/kg/hr for 23 hrs",
          response:"The IONM is already improved. This is a choice for when changes persist. <br><br>A wake-up test was conducted at the end of the procedure which was normal. ",
          nextQuestion:"9"
        )

        scenario2.questions.last.answers.create!(
          answeroption:"Give IV lidocaine 2mg/kg if blood flow to the spinal cord is the suspected reason for IOM changes",
          response:"The IONM is already improved. This is a choice for when changes persist. <br><br>A wake-up test was conducted at the end of the procedure which was normal. ",
          nextQuestion:"9"
        )

        scenario2.questions.last.answers.create!(
          answeroption:"Wake-up test",
          response:"Although a wake-up test is a recommendation for if changes persist rather than improve, a wake-up test was conducted at the end of the procedure which was normal.",
          nextQuestion:"9"
        )

        scenario2.questions.last.answers.create!(
          answeroption:"Post-op imaging (CT, MRI, CT Myelography)",
          response:"A wake-up test was conducted at the end of the procedure which was normal. If concerned, consider consulting with a colleague for the need of post-op imaging.",
          nextQuestion:"9"
        )

      # Question 9 FINAL

        # Page 37
        scenario2.questions.create!(
          questionprompt: "This case is complete.")
        #A17
        scenario2.questions.last.answers.create!(
          answeroption:"Select another case",
          nextQuestion:"[return to root]"
        )

  #Scenario 3

    scenario2 = Scenario.create!(
    #(Insert X-RAY Image 27)

      name: "Case 3",
      description: "Amy is a 15 yo girl (post menarchal, Risser 4) with progressive adolescent idiopathic scoliosis with a right thoracic curve from T5 to T10 measuring 60 degrees and a left lumbar curve from T11 to L3 measuring 45 degrees.",
      image: "https://s3.amazonaws.com/LKBG-TG/columbia/Image+25.jpg")



    # (Insert Image 33)
    # Intro
      # Intro 0
      scenario2.intro.create!(
        content: "<imgr src='https://s3.amazonaws.com/LKBG-TG/columbia/Image+20+-+X-Ray.jpg'>In order to assist in facilitating the importance of utilizing this checklist and being aware of the various steps and choices to make at the time of a deviation from baseline in intraoperative monitoring, we have created this web simulator.<br><br>Please note that the presented cases are based on a true case although deidentified as per HIPAA regulations."
      )

      # Intro 1
      scenario2.intro.create!(
        content: "Emily is a 12 yoF with progressive adolescent idiopathic scoliosis showing a curve to the left T1-T5 of 30 degrees that bends to 29 to the right, T6-T12 of 51 degrees that bends to 40, and to the left L1-L4 of 20 degrees that bends to 9."
      )

      # Intro 2
      scenario2.intro.create!(
        content: "<img src=''> She comes in for posterior spinal instrumentation and fusion."
      )

      # Intro 3
      scenario2.intro.create!(
        content: "<img src=''> Screws were placed between T4 and L1. <br><br>You are informed that there is a complete loss of upper and lower evoke and somatosensory evoke potentials. "
      )

    # Question
      # Question 1
        # Page 40
        # (Insert Video 3 no sound - automatically begin as page open; continue to repeat)
        scenario2.questions.create!(
          questionprompt: "What will you do next? (pick one to move forward in the intervention):"
          )
        #Answers 1
        scenario2.questions.last.answers.create!(
          answeroption:"Gain control of the room",
          response:"Proceed",
          nextQuestion:"2"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check anesthetic/systemic conditions of the patient",
          response:"Proceed",
          nextQuestion:"3"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Seek technical/neurophysiologic reasons for IONM changes",
          response:"Proceed",
          nextQuestion:"4"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Seek surgery-related reasons for IONM changes",
          response:"Proceed",
          nextQuestion:"5"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Consider consultation with a colleague",
          response:"You should always consider consultation with a colleague. What else can you and your colleague do in order to pinpoint the reason to bring the IONM back to baseline?",
          nextQuestion:"1"
        )

    # Question
      # Question 2
        # Page 41
        # (Insert Image 11)
        scenario2.questions.create!(
          questionprompt: "In what methods will you gain control of the room (pick one to create the best environment for this situation):"
          )
        #Answers 2
        scenario2.questions.last.answers.create!(
          answeroption:"Stop case and announce to the room",
          response:"Now everyone is notified of the changes. How else can you gain control of the room?",
          nextQuestion:"2"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Eliminate extraneous stimuli (music, conversations, etc.)",
          response:"Proceed",
          nextQuestion:"2"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"The music has been stopped and you have eliminated extraneous stimuli. How else can you gain control of the room?",
          response:"Proceed",
          nextQuestion:"2"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Summon ATTENDING anesthesiologist and SENIOR neurophysiologist/neurologist for support.",
          response:"You have the attention of the attending anesthesiologist and senior neurophysiologist/neurologist now. How else can you gain control of the room?",
          nextQuestion:"2"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Anticipate need for intraoperative imaging if not readily available",
          response:"How else can you gain control of the room? This choice should show up on the side] ",
          nextQuestion:"2"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"All of the above",
          response:"Now you have everyone’s attention and ready to take further action steps.",
          nextQuestion:"1"
        )

    # Question
      # Question 3
        # Page 42
        # (Insert Image 12)
        scenario2.questions.create!(
          questionprompt: "Check anesthetic/systemic conditions of the patient (pick an answer to pinpoint the possible reason for the IONM changes):"
          )
        #Answers 3
        scenario2.questions.last.answers.create!(
          answeroption:"Optimize MAP",
          response:"Blood pressure is normal; what else will you check?",
          nextQuestion:"3"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Optimize Hematocrit",
          response:"There is no abnormality; what else will you check? ",
          nextQuestion:"3"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Optimize Blood pH",
          response:"There is no abnormality; what else will you check?",
          nextQuestion:"3"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Seek Normothermia",
          response:"There is no abnormality; what else will you check?",
          nextQuestion:"3"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss POTENTIAL need for eventual wake-up test with ATTENDING anesthesiologist",
          response:"Need discussed; what else will you check?",
          nextQuestion:"3"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"All of the Above",
          response:"All these points are vital to check; however there are no systemic abnormalities found. IONM has not returned to baseline. What else? ",
          nextQuestion:"1"
        )

    # Question
      # Question 4
        # Page 43
        # (Insert Image 29)
        scenario2.questions.create!(
          questionprompt: "Seek technical/neurophysiologic reasons for IONM changes (pick an answer to pinpoint the possible reason for the IONM changes):"
          )
        #Answers 4
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss status of inhalational agents with anesthesia",
          response:"IONM has not returned to baseline. What else? ",
          nextQuestion:"4"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check extent of neuromuscular blockade",
          response:"IONM has not returned to baseline. What else? ",
          nextQuestion:"4"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check electrode placement",
          response:"IONM has not returned to baseline. What else? ",
          nextQuestion:"4"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Determine pattern and timing of signal changes",
          response:"IONM has not returned to baseline. What else? ",
          nextQuestion:"4"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check limb/neck positioning; check limb position on table especially in unilateral loss",
          response:"Limb and neck are positioned properly. What else? ",
          nextQuestion:"4"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"All of the Above",
          response:"It is important to continue revisiting systemic considerations and confirm that they are optimized. However, the IONM has not yet returned to baseline. ",
          nextQuestion:"1"
        )

    # Question
      # Question 5
        # Page 44
        # (Insert Video 4 00:00 to 00:19 no sound- automatically begin as page open; continue to repeat)
        scenario2.questions.create!(
          questionprompt: "Seek surgery-related reasons for IONM changes (pick an answer to pinpoint the possible reason for the IONM changes):"
          )
        #Answers 5
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss events and actions just prior to signal loss and consider reversing actions (e.g.; remove traction/rods/screws, decrease distraction, or probe for breech).",
          response:"After removing the rod, you removed all the screws at the proximal point. You probed and found that there was a medial breach",
          nextQuestion:"5"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Evaluate for spinal cord compression and examine osteotomy/laminotomy sites. ",
          response:"Upon examination, everything looks normal. What else? ",
          nextQuestion:"5"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Both of the Above",
          response:"After removing the rod, you removed all the screws at the proximal point. You probed and found that there was a medial breach. You are alerted that the motor evoked potential monitoring had rapidly improved. ",
          nextQuestion:"1"
        )
    # Question
      # Question 6
        # Page 46
        # (Insert Video 10 00:00 to 00:10 no sound- automatically begin as page open; continue to repeat)
        scenario2.questions.create!(
          questionprompt: "You are informed that after 2 minutes the evoked potentials improved and normalized. At this point you would: "
          )
        #Answers 1
        scenario2.questions.last.answers.create!(
          answeroption:"Continue on with the surgery",
          response:"After discussion with another attending surgeon, you proceeded with instrumentation.",
          nextQuestion:"7"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Stage and continue on another day",
          response:"After discussion with another attending surgeon, you proceeded with instrumentation.",
          nextQuestion:"7"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss this decision with another attending surgeon",
          response:"After discussion with another attending surgeon, you proceeded with instrumentation.",
          nextQuestion:"7"
        )

    # Question
      # Question 7
        # Page 49
        # (Insert Image 34)
        scenario2.questions.create!(
          questionprompt: "You proceeded with the instrumentation in the upper thoracic spine despite the surrounding distractions. <br><br> Patient is given an infusion of propofol and you are informed once again that there was a loss of lower extremity motor-evoked potentials."
          )
        #Answers 1
        scenario2.questions.last.answers.create!(
          answeroption:"Next",
          response:"Proceed",
          nextQuestion:"8"
        )

    # Question
      # Question 8
        # Page 50
        # (Insert Video 3 no sound - automatically begin as page open; continue to repeat)
        scenario2.questions.create!(
          questionprompt: "What will you do next? (pick one to move forward in the intervention):"
          )
        #Answers 8
        scenario2.questions.last.answers.create!(
          answeroption:"Gain control of the room",
          response:"Proceed",
          nextQuestion:"9"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check anesthetic/systemic conditions of the patient",
          response:"Proceed",
          nextQuestion:"10"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Seek technical/neurophysiologic reasons for IONM changes",
          response:"Proceed",
          nextQuestion:"11"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Seek surgery-related reasons for IONM changes",
          response:"Proceed",
          nextQuestion:"12"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Consider consultation with a colleague",
          response:"You should always consider consultation with a colleague. What else can you and your colleague do in order to pinpoint the reason to bring the IONM back to baseline?",
          nextQuestion:"8"
        )

    # Question
      # Question 9
        # Page 51
        # (Insert Video 8 no sound- automatically begin as page open; continue to repeat)
        scenario2.questions.create!(
          questionprompt: "In what methods will you gain control of the room (pick one to create the best environment for this situation):"
          )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"Stop case and announce to the room",
          response:"Now everyone is notified of the changes. How else can you gain control of the room?",
          nextQuestion:"9"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Eliminate extraneous stimuli (music, conversations, etc.)",
          response:"Music and conversations were very distracting at this time. <br><br>You ask for everyone to stop the music and get everyone’s attention towards finding why there are IONM changes.",
          nextQuestion:"13"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Summon ATTENDING anesthesiologist and SENIOR neurophysiologist/neurologist for support.",
          response:"You have the attention of the attending anesthesiologist and senior neurophysiologist/neurologist now. How else can you gain control of the room?",
          nextQuestion:"9"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Anticipate need for intraoperative imaging if not readily available",
          response:"How else can you gain control of the room? ",
          nextQuestion:"9"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"All of the above",
          response:"Now you have everyone’s attention and ready to take further action steps. ",
          nextQuestion:"8"
        )

    # Question
      # Question 10
        # Page 52
        # (Insert Image 12)
        scenario2.questions.create!(
          questionprompt: "In what methods will you gain control of the room (pick one to create the best environment for this situation):"
          )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"Optimize MAP",
          response:"There is no abnormality; what else will you check?",
          nextQuestion:"10"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Optimize Hematocrit",
          response:"There is no abnormality; what else will you check?",
          nextQuestion:"10"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Optimize Blood pH",
          response:"There is no abnormality; what else will you check?",
          nextQuestion:"10"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Seek Normothermia",
          response:"There is no abnormality; what else will you check?",
          nextQuestion:"10"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss POTENTIAL need for eventual wake-up test with ATTENDING anesthesiologist",
          response:"Need discussed; what else will you check?",
          nextQuestion:"10"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"All of the Above",
          response:"All these points are vital to check; however there are no systemic abnormalities found. IONM has not returned to baseline. What else? ",
          nextQuestion:"8"
        )

    # Question
      # Question 11
        # Page 53
        # (Insert Image 22)
        scenario2.questions.create!(
          questionprompt: "Seek technical/neurophysiologic reasons for IONM changes (pick an answer to pinpoint the possible reason for the IONM changes):"
          )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss status of inhalational agents with anesthesia",
          response:"IONM has not returned to baseline. What else? ",
          nextQuestion:"11"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check extent of neuromuscular blockade",
          response:"IONM has not returned to baseline. What else? ",
          nextQuestion:"11"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check electrode placement",
          response:"All electrodes are placed properly. What else? ",
          nextQuestion:"11"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Determine pattern and timing of signal changes",
          response:"IONM has not returned to baseline. What else? ",
          nextQuestion:"11"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check limb/neck positioning; check limb position on table especially in unilateral loss",
          response:"Limb and neck are positioned properly. What else? ",
          nextQuestion:"11"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"All of the Above",
          response:"It is important to continue revisiting systemic considerations and confirm that they are optimized. However, the IONM has not yet returned to baseline. ",
          nextQuestion:"9"
        )

    # Question
      # Question 12
        # Page 54
        # (Insert Video 4 00:00 to 00:19 no sound- automatically begin as page open; continue to repeat)
        scenario2.questions.create!(
          questionprompt: "Seek surgery-related reasons for IONM changes (pick an answer to pinpoint the possible reason for the IONM changes):"
        )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss events and actions just prior to signal loss and consider reversing actions (e.g.; remove traction/rods/screws, decrease distraction, or probe for breech).",
          response:"No abnormalities were found. What else?",
          nextQuestion:"12"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Evaluate for spinal cord compression and examine osteotomy/laminotomy sites. ",
          response:"Upon examination, everything looks normal. What else? ",
          nextQuestion:"12"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Both of the Above",
          response:"Everything appears normal. What else can be done? ",
          nextQuestion:"12"
        )

    # Question
      # Question 13
        # Page 58
        # (Insert Image 17)
        scenario2.questions.create!(
          questionprompt: "After all distractions were eliminated, an effort to improve potentials was made. "
        )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"Proceed",
          response:"Proceed",
          nextQuestion:"14"
        )

    # Question
      # Question 14
        # Page 59
        # (Insert Image 35)
        scenario2.questions.create!(
          questionprompt: "After all distractions were eliminated, an effort to improve potentials was made. "
        )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"Gain control of the room",
          response:"Proceed",
          nextQuestion:"15"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check anesthetic/systemic conditions of the patient",
          response:"Proceed",
          nextQuestion:"16"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Seek technical/neurophysiologic reasons for IONM changes",
          response:"Proceed",
          nextQuestion:"17"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Seek surgery-related reasons for IONM changes",
          response:"Proceed",
          nextQuestion:"18"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Consider consultation with a colleague",
          response:"You should always consider consultation with a colleague. Now what? ",
          nextQuestion:"14"
        )

    # Question
      # Question 15
        # Page 60
        # (Insert Image 36)
        scenario2.questions.create!(
          questionprompt: "In what methods will you gain control of the room (pick one to create the best environment for this situation):"
        )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"Stop case and announce to room",
          response:"Now everyone is notified of the changes. How else can you gain control of the room?",
          nextQuestion:"15"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Eliminate extraneous stimuli (music, conversations, etc.)",
          response:"ii. The music has already been stopped and you have already eliminated extraneous stimuli. How else can you gain control of the room?",
          nextQuestion:"15"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Summon ATTENDING anesthesiologist and SENIOR neurophysiologist/neurologist support",
          response:"iiYou have the attention of the attending anesthesiologist and senior neurophysiologist/neurologist now. How else can you gain control of the room?",
          nextQuestion:"15"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Anticipate need for intraoperative imaging if not readily available",
          response:"iv. How else can you gain control of the room? ",
          nextQuestion:"15"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"All of the above",
          response:"v.  Now you have everyone’s attention and ready to take further action steps. ",
          nextQuestion:"15"
        )
    # Question
      # Question 16
        # Page 61
        # (Insert Image 12)
        scenario2.questions.create!(
          questionprompt: "Check anesthetic/systemic conditions of the patient (pick an answer to pinpoint the possible reason for the IONM changes):"
        )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"Optimize MAP",
          response:"MAP was optimized to 100 but there was no resolution. What else can be done? ",
          nextQuestion:"16"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Optimize Hematocrit",
          response:"No abnormalities found. What else can be done? ",
          nextQuestion:"16"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Optimize Blood pH",
          response:"No abnormalities found. What else can be done? ",
          nextQuestion:"16"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss POTENTIAL need for eventual wake-up test with ATTENDING anesthesiologist",
          response:"Discussion of a potential wake-up test with the attending anesthesiologist is important at this point. A wake-up was conducted. ",
          nextQuestion:"18"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"All of the Above",
          response:"Discussion of a potential wake-up test with the attending anesthesiologist is important at this point. A wake-up was conducted. ",
          nextQuestion:"18"
        )


    # Question
      # Question 17
        # Page 62
        # (Insert Image 29)
        scenario2.questions.create!(
          questionprompt: "Seek technical/neurophysiologic reasons for IONM changes (please choose an answer for a possibility of the IONM returning to baseline):"
        )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss status of inhalational agents with anesthesia",
          response:"IONM has not returned to baseline. What else? ",
          nextQuestion:"17"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check extent of neuromuscular blockade",
          response:"IONM has not returned to baseline. What else? ",
          nextQuestion:"17"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check electrode placement",
          response:"IONM has not returned to baseline. What else? ",
          nextQuestion:"17"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Determine pattern and timing of signal changes",
          response:"IONM has not returned to baseline. What else?",
          nextQuestion:"17"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Check limb/neck positioning; check limb position on table especially in unilateral loss",
          response:"IONM has not returned to baseline. What else? ",
          nextQuestion:"17"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"All of the Above",
          response:"It is important to consider all these choices, however did not return MEP’s to baseline. What next? ",
          nextQuestion:"14"
        )


    # Question
      # Question 18
        # Page 63
        # (Insert Video 4 00:00 to 00:19 no sound- automatically begin as page open; continue to repeat)
        scenario2.questions.create!(
          questionprompt: "Seek technical/neurophysiologic reasons for IONM changes (please choose an answer for a possibility of the IONM returning to baseline):"
        )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"Discuss events and actions just prior to signal loss and consider reversing actions (e.g.; remove traction/rods/screws, decrease distraction, or probe for breech).",
          response:"IONM has not returned to baseline. What else? ",
          nextQuestion:"18"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Evaluate for spinal cord compression and examine osteotomy/laminotomy sites. ",
          response:"Upon examination, everything looks normal. What else? ",
          nextQuestion:"18"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Both of the Above",
          response:"After clearing the mechanical causes for IONM change, it did not return to baseline. What else? ",
          nextQuestion:"14"
        )

    # Question
      # Question 19
        # Page 65
        # (Insert Image 26)
        scenario2.questions.create!(
          questionprompt: "The SEP’s improved after a few minutes but the MEP’s were still lost. <br><br>Would you consider:"
        )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"IV steroid protocol: 30mg/kg in 15 min for 1st hour, then 5.4 mg/kg/hr for 23 hrs",
          response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
          nextQuestion:"20"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"IV lidocaine 2mg/kg if blood flow to the spinal cord is the suspected reason for IOM changes",
          response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
          nextQuestion:"20"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Wake-up test",
          response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
          nextQuestion:"20"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Post-op imaging (CT, MRI, CT Myelography)",
          response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
          nextQuestion:"20"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Continuing Surgery",
          response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
          nextQuestion:"20"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Staging and continuing another day",
          response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
          nextQuestion:"20"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Discussing this decision with another attending surgeon",
          response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
          nextQuestion:"20"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Continuing Surgery",
          response:"After discussion with another attending surgeon, we decided to conduct a wake-up test. ",
          nextQuestion:"20"
        )

    # Question
      # Question 20
        # Page 66
        # (Insert Image 37)
        scenario2.questions.create!(
          questionprompt: "A wake-up test was performed and she was noted to be moving bilateral lower extremities. <br><br>Would you consider: "
        )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"Continuing on with the surgery",
          response:"After discussion with another attending surgeon, it was decided to continue on with the surgery. ",
          nextQuestion:"21"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Staging and continuing on another day",
          response:"After discussion with another attending surgeon, it was decided to continue on with the surgery. ",
          nextQuestion:"21"
        )
        scenario2.questions.last.answers.create!(
          answeroption:"Discussing this decision with another attending surgeon. ",
          response:"After discussion with another attending surgeon, it was decided to continue on with the surgery. ",
          nextQuestion:"21"
        )


    # Question
      # Question 21
        # Page 67
        # (Insert Video 6 00:03 to end no sound- automatically begin as page open; continue to repeat)
        scenario2.questions.create!(
          questionprompt: "A decision to move forward with the surgery was made. Evoked Potentials continued to be stable and improved overtime."
        )
        #Answers 9
        scenario2.questions.last.answers.create!(
          answeroption:"Next",
          response:"Procede",
          nextQuestion:"22"
        )

    # Question
      # Question 22
        # Page 68
        # (Insert Image 11)
        scenario2.questions.create!(
          questionprompt: "This case is complete.")
        #A17
        scenario2.questions.last.answers.create!(
          answeroption:"Select another case",
          nextQuestion:"[return to root]"
        )
