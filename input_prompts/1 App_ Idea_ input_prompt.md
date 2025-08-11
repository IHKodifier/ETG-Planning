
# Step 1 App Idea TEMPLATE



<!-- #region APP_OVERVIEW -->


${APP_OVERVIEW} = "  

This app named **"EntryTestGuru"** is an app designed for students to prepare for Admission Exams like  the **ECAT , MCAT,CCAT**, and internationally  recognized/standardized tests like  **GMAT, GRE, and SAT**
-  **ECAT** (Engineering College Admission Test) are tests for qualifying for an admission into a Pakistan's  undergrad **Engineering University Program** 
- **MCAT**  or Medical College Admission Test are tests for qualifying for an admission into into a Pakistan's undergrad **Medical University Program**  
- **CCAT** or Cadet College Admissions test are tests for qualifying for an admission into into a  string of Cadet Colleges across Pakistan . These Cadet colleges offer education from   for class class 8th to Higher Secondary(equivalent of 12th grade).   
- **ECAT, MCAT, GMAT, GRE** & **SAT** are taken by High School Graduates.
- primary subject covered in these test include 
- **ECAT**
  - English
  - Physics
  - Chemistry
  - Math (Pre Calculus)  

- **MCAT**
  - English
  - Physics
  - Chemistry
  - Botany
  - Zoology
 - **CCAT**
    - English
    - Mathematics (7th Grade arithematic, Algebra, ratio and proportions, Geometry,percentages, logical/mathematical reasoning)
- **GMAT**
  - Quantitative Reasoning, which tests arithmetic, algebra, and geometry; Verbal Reasoning, assessing reading comprehension and critical thinking; and Data Insights
- With the exception of GMAT, GRE, and SAT, all other exams are held once a year only with no re-take options within the academic year.

- The ECAT and MCAT are also briefly called as entry tests or entry test exams.
- These entry tests are an exam based on  Multiple Choice Questions (MCQs).

This app will help them prepare  and practice Multiple Choice Questions (MCQs)  for the exam. Such exams are conducted once every year so candidates have a 1 shot at this exam to score enough to secure a seat in their colleges/disciplines of interest else they will hasve to wait one full year to re appear. hence they need to put up their best performance. for ECAT and MCAT, the questions are taken from a fixed question bank of nearly  10,000 question  The questions appearing on the exam can have slight variations from the ones in the original question bank, flipping the known and unknown variable or slifghtly changing the variable values just to confuse the student or test his grasp on the topic. 

The target audience of the app can be 7th or 8th graders preparing for CCAT. In which case, the question bank is not clearly defined, but the topics covered are generally the same.

# Definitions
First of all let me standardize the terminilogy to be used across the board.
- **Sprint Exam** is called SE for brevity.
Multiple choice question is called MCQ for brevity..
- Simulated Real Exam is called SRE for brevity.  
- The  **Actual Real Deal Exam (ARDE)** is the real world real deal exam that the user are  preparing for... through our app.Some well known Examples of ARDE include SAT, GRE, GMAT. The Pakistani Engineering College/Medical College  Admission test are also an ARDE. This exam is taken, governed and marked by other entities. It requires proper exam reservations, paying exam fees, selecting dates and test centres, showing up at the test centre on the test  date , taking the exam and then waiting for results. our app has no control over ARDE.  
Our SREs however mimic the exact exam structure of corresponding  ARDE in terms of
 - number of questions on the exam.
 - marking scheme (e.g. negative marking)
 - time duration of the exam.
 - any breaks allowed in between sections of the ARDE
 - time duration of breaks    
 
 It should be noted that our app's SREs and SEs do not make a distinction between Computer Based Testing (CBT) or paper based Testing (PBT). since some of the ARDEs can possibly be taken as CBT or PBT. our app only provides a digital tool for preparing for ARDEs and hence our SEs and SREs are always Digitally aided(computer/mobile) Testing so to speak. 
 - Both SE and SRE are kind of practice exams the users take to prepare  for ARDEs
The app will present them with practice MCQ questions from the question bank, roughly covering all topics or , which are more likely to appear in the question due to the importance  of the topic within that subject.
-The question bank shall also be equipped with analytics as to:
- How many times it has been asked on the real exam
- What's the likelihood of this question being asked on the real exam
The app will gather analytics on their performance, which topics they are doing good, which topics they are weak in , which topics they need to practice further. In this way, the app will be able to curate practice tests for them based on their performance. 
The app will do precise time-keeping for user's  question attempts. For instance:
- How much time they take to make their first answer choice.
- How many attempts do they make to arrive the right answer choice
- How many times they make wrong choices.
- How much time they on average take to arrive at the correct answer for each question/topic.
By keeping analytics of such of the above, the app should be able to precisely equip the user with the knowledge of where users  are doing good and where there is room for improvement.
users will be able to:
- Practice MCQ questions based on a subject of their choice, topic of their choice, difficulty level, and user's  performance on the aforementioned factors.
- Take practice exams.
- Take Sprint Exams (SEs) based on the time they have available for that particular sprint 
## Sprint Exam (SE)
- A Sprint exam is defined as a practrice mode exam  Where a user challenges himself to answer a series of MCQ questions within a chosen time frame  
- users choses from a preset  sprint of 5,10,15,20,25,30,35,40,45,50 questions)and a user configurable timeframe to complete the challenge.
- User chooses the topics from which he wants the questions to appear.
- User chooses a mix of difficulty levels for the questions
- After selection of each answer, the correctness or wrongness of answers is not revealed to him immediately after the question attempt, but rather at the end of the Sprint.
- After the sprint is successfully completed, the system displays a scorecard, and a set of following follow-up actions whether to dig down into the questions go into the explanations your recommendations or move to any other task that he chooses to. 
- The system manages strict time-keeping of the sprint and each individual question, recording valuable analytics.
- The purpose of the sprint exams is to train a user to answer questions under time pressure on a student and test his ability to attempt  correctly  a series of   back to back questions in a quick succession under time pressure and get used to sort of exam environment/pressures and challenge his own abilities.
- A Sprint Exam (SE) is a Where a user challenges himself to answer a series of MCQ questions within a chosen time frame  
- users choses from a preset  sprint of 5,10,15,20,25,30,35,40,45,50 questions)Depending upon the limits imposed by their tier and a user configurable timeframe to complete the challenge
All along time keeping for every question and a track record of the mistakes they are making and what they need to learn to improve their performance on the exam. 

- Once they feel ready, they'll be able to take Simulated Real  Exams(SRES). with actual time constraints and time-keeping.
The app will continuously try to make suggestions and improve their scores through the use of analytics and making intelligent use of  their practice data and performance.

## anonymous users get 
- 20 daily Practice MCQs to take
- 1 sprint exam(SE) . On an attempt to take 2nd SE as anonymous users,  they are gracefully required to sign up.  
-  1 simulated real exam(SRE)  with only half the number of questions found on the real deal exam aka "half length SRE" 
## free users :
free users get to enjoy the app with relatively higher limits than anonymous users. howevet, free users get to use the app for free only for 2 weeks during which they can test out the app with the higher limits compared to anonymous users. During the 2 week period they get... s
- 50 daily Practice MCQs to take
-  Four  SEs. On an attempt to take 5th SE as free users,  they are gracefully required to upgrade to paid tier.  
-  Two  SREs  
## paid users: 
Paid users is the only paid tier with no segreations as basic, mid, pro levels . paid users enjoy
- Truly unlimited daily practice MCQs
- Truly Unlimited SEs
- Trulu unlimited SREs 
- The app will be monetized primarily through paid users. Although the free users will get to see an ad through Google's AdSense after every 5 practice MCQs, or at least 2 ads per Sprint Exam, and 3 ads per half Simulated Real Exam.
"
<!--#endregion-->

<!-- #region role definition -->
${ROLE_DEFINITION} = "
 You are to act as a seasoned SaaS Founder with a strong focus on understanding and solving real user problems. Your approach should be collaborative and consultative, asking clear, numbered questions to clarify requirements, and integrating user responses into the evolving project plan. Only provide the final project specification once all key information has been gathered or as much as is available at this stage.You’re an experienced SaaS Founder that obsesses about product and solving peoples problems. You take a  real focus on the PROBLEM, and then think  through interesting ways of solving those problems. Your job is to take the app idea, and take on a collaborative / consultative role following the $[CONSULTATION_APPROACH] to turn this idea into a detailed project specification using the preovided ${OUTPUT_FORMAT_TEMPLATE}. The app idea and initial MVP thoughts are in the App-overview and MVP section."

"
<!-- #endregion -->

<!-- #region CONSULTATION APPROACH -->

# CONSULTATION  Approach

${CONSULTATION_APPROACH} = "
- Avoid feature creep by continuously validating each idea against the primary problem statement.
- Ask clear, numbered questions to clarify requirements
- STRICTLY one question per serial number
- Integrate user responses into the evolving plan
- Only provide the final output when all key information is gathered
- Accept that some answers may be unavailable at this stage
- produce the artifact ONLY AFTER you haveall the answered orat least those which can be answered for now. 

";

<!-- #endregion -->

<!-- #region output format -->

# FORMAT:

${OUTPUT_FORMAT_TEMPLATE} = "[
\#\# Elevator Pitch<Br>
\#\# Problem Statement<Br>
\#\# Target Audience
### Target audience segmentation
## Unique Selling Points (USP)
## Target Platforms
## Features List
### Feature Category
- [] [Requirement, ideally as a User Story]
- [] [Sub-requirement or acceptance requirement]
### UX/UI Considerations
- [] [Screen or Interaction]
- [] [Description of different “states” of that screen]
- [] [How it handles state changes visually]
- [] [Animations, information architecture, progressive disclosure, visual hierarchy, etc]
### Non-Functional Requirements
- [] [Performance]
- [] [Scalability]
- [] [Security]
- [] [Accessibility]
## Monetization
[How will the app make money?]

]";

<!-- #endregion -->

<!-- #region Warning and guidance-->
# WARNINGS-AND-GUIDANCE:
* Ask for clarifications if there are any ambiguities<Br>
* Give suggestions for new features<Br>
* Consider inter-connectedness of different features<Br>
* Make sure any mission-critical decisions are not skipped over<Br>
* We're focusing onideation of the app /functional accomplishments of features in this stage. not designing UX in  detail.<Br>
* If a feature or tech choice seems ambiguous, ask me for clarification such that you would get What you need to continue<Br>
* You should consider how tech choices may evolve or change if the application scales and give me recommendations with tradeoff consideration<Br>
* We should have a clear architecture for the app. including main infrastructure considerations.<Br>
* services/microservices required, critical 3rd party APIs choices, etc<Br>
  
  <!-- #endregion -->

<!-- #region tech Stack -->
* The frontend will be built in Flutter with a Micro-services architecture.
* **Riverpod** wilbe used for state ,management.
* **Firebase** infrastructure will power the backend.
* The backend will be built in Python using FastAPI
* My app will only talk to **API endpoints**
* The authentication will use **Firbase Auth** using Google,Facebook, phone number authentication or plain old Email/password.  
* front-end will only and only talk to API endpoints for the app
* I will use Google Analytics  For analytics in my application
*  subscriptions  and payments will be managed by paddle.com
<!-- #endregion -->

<!-- #region MVP -->
# MVP:

* users login or signup or continue as anonymous users aka anon users
* app is primarily monetized through paid users, but even the paid anonymous users do get an ad every 5 questions. The timekeeping excludes the time taken during the loading, display and dismissal of the ad.
* Even anonymous users and all the registered users are on-boarded through a menu which prompts them to select the category of exam they are preparing  for, so the questions appearing are appropriate questions are selected from the  question bank.
* The anonymous users can practice up to 50 questions at random and take two sprint exams. They are only allowed to take one real simulated exam after which they are gracefully requested to upgrade to a paid tier. 

*The app has just three type of users:
- Anonymous users (meaning users who haven't signed up with a particular Google, Facebook, or phone auth) are just trying out the app. 
- free  users (meaning users who have signed up with a particular Google/Facebook/PhoneAuth) but not upgraded to a paid tier
- Paid Users who have signed up purchased a monthly/yearly subscription. 



* If the user has not signed up and continues to choose to continue as an anonymous user, they can still 
- Test the app with 20 free MCQs before they sign up. 
- coaching on how to attempt these 20 questions correctly, and particularly those that they have not been able to answer correctly. 
- Test the app with one sprint exam before they sign up 
- Test the app with half a  simulated real exam (half  length of actual exam duration and half the actual number of questions on the exam) before they sign up. 
- Review their scores, the questions they have attempt correct and the ones they attempted with wrong answers, and an analysis of their strengths/weaknesses and an analysis of their performance and a comprehensive study plan/improvement program. But to avail the program for improvement, they will have to sign up and upgrade to sign up  



* free users can 
- Take 20 free MCQs daily for the first 2 week, after which they will have to upgrade to a paid tier.
- coaching on how to attempt these 20 questions correctly, and particularly those that they have not been able to answer correctly. 
- Take three  sprint exams a week  during their  first 2  weeks after their sign up , after which they will have to upgrade to a paid tier
-Review their scores, the questions they have attempt correct and the ones they attempted with wrong answers, and an analysis of their strengths/weaknesses and an analysis of their performance and a comprehensive study plan/improvement program. 


* paid users can 
- Practice unlimited MCQs daily. 
coaching on how to attempt these 20 questions correctly, and particularly those that they have not been able to answer correctly. 
- Practice unlimited sprint exams daily.
- On-demand coaching on any topic/subject of their choice and any particular type of questions that they struggle with. 
- Practice unlimited real simulated exams daily, full length and full number of question.
-  Review their scores, the questions they have attempt correct and the ones they attempted with wrong answers, and an analysis of their strengths/weaknesses and an analysis of their performance and a comprehensive study plan/improvement program.
- They will be able to start doing the comprehensive study plan/improvement program and will be able to compare their historical performance on the improvement program and exam specifically tailored to gauge their performance on the questions they have been weak on.
- A dedicated learning center where they will have tips and tricks from the masters on the subject and some neat and clean tricks to perform well on the exam. 

<!-- #endregion-->


