# Contradiction analysis between outputs 1, 2, and 3.
 
 Major Contradictions
## 1. Device Session Management Conflict

Document 1 (Project Spec): States users can log in across "maximum 3 devices (any combination of mobile, tablet, desktop)"
Document 2 (Architecture): Mentions "3-device limit enforcement"
Document 3 (Feature Stories): Also references 3-device limit
Issue: The documents treat tablets as separate devices, but tablets typically run the same mobile app as phones. This creates ambiguity about whether a user with an iPhone and iPad would be using 2 devices or 1.

## 2. Anonymous User Limitations Inconsistency

Document 1: Anonymous users can practice "20 MCQs with expert coaching"
Document 1: Anonymous users can take "1 sprint exam before requiring signup"
Document 1: Anonymous users can take "one half-length simulated exam"
Document 3: Mentions anonymous users get "trial usage" but doesn't specify if this includes all three features simultaneously or if they're alternatives.

## 3. Free User Sprint Exam Contradictions

Document 1: Free users can take "3 sprint exams weekly for 2 weeks"
Document 1: Also states free users can practice "20 daily MCQs for 2 weeks"
Contradiction: It's unclear if the 3 weekly sprint exams are in addition to the 20 daily MCQs or if they're separate limitations. The math doesn't align clearly (3 weekly × 2 weeks = 6 total sprints vs. 20 daily × 14 days = 280 questions).

## 4. Payment Processing Technology Stack

Document 1: States "Stripe for processing, Paddle.com for subscription management"
Document 2: Shows "Stripe API for Payments" and "Paddle.com Subscriptions" as separate external services
Document 2: Lists "FastAPI payment service with idempotent transaction handling"
Potential Issue: Having both Stripe AND Paddle for payments could create complexity. Typically, you'd use one or the other, not both simultaneously.

## 5. Session Transfer Restrictions

Document 2: States "Sprint sessions are device-locked once started to maintain session integrity"
Document 2: Also states "Exam sessions are device-locked once started and cannot be transferred to other devices"
Document 1: Mentions "seamless switch between mobile and desktop while maintaining session and progress"
Contradiction: You can't have both seamless device switching AND device-locked sessions. The documents need to clarify which sessions can transfer and which cannot.

## Minor Inconsistencies
### 6. Authentication Methods

Document 1: Lists "Google, Facebook, or phone authentication"
Document 3: Also mentions "Google, Facebook, Phone"
Consistency Check: This is actually consistent, but the documents should clarify if "phone authentication" means SMS verification or phone number as login ID.

### 7. Question Bank Technology

Document 2: States "Cloud SQL (PostgreSQL) for structured question data"
Document 2: Also mentions "Elasticsearch for advanced question filtering and search"
Question: It's unclear why both PostgreSQL AND Elasticsearch are needed for question storage. This might be intentional (PostgreSQL for storage, Elasticsearch for search), but should be clarified.

### 8. Real-time Synchronization Claims

Document 2: States "Basic session management without real-time synchronization between platforms"
Document 2: Also mentions "WebSocket Gateway for real-time timer synchronization"
Document 2: Lists "Real-time Sync Service"
Contradiction: Can't have both "no real-time sync" and multiple real-time services.

# Recommendations for Resolution

Clarify Device Definitions: Define whether tablets count as separate devices from phones or if they share the mobile app allocation.
Specify Anonymous vs Free User Paths: Create clear user journey maps showing exactly what anonymous users get vs. free registered users.
Consolidate Payment Strategy: Choose either Stripe OR Paddle as the primary payment processor, or clearly define why both are needed.
Define Session Transfer Rules: Specify which types of sessions (practice, sprint, exam) can transfer between devices and which are device-locked.
Clarify Real-time Sync Scope: Define exactly what syncs in real-time vs. what uses basic session management.  

---  
---
---
---
# DEFINITIONS
First of all let me standardize the terminilogy to be used across the board.
- Sprint Exam is called SE for brevitry
- Simulated Real Exam is called SRE for brevity.  
- The  Actual Real Deal Exam (ARDE) is the real world real deal exam that the user are  preparing for... through our app.Some well known Examples of ARDE include SAT, GRE, GMAT, TOEFL. The Pakistani Engineering College/Medical College  Admission test are also an ARDE. This exam is taken, governed and marked by other entities. It requires proper exam reservations, paying exam fees, selecting dates and test centres, showing up at the test centre on the test  date , taking the exam and then waiting for results. our app has no control over ARDE.  

  Our SREs however mimic the exact exam structure of corresponding  ARDE in terms of
 - number of questions on the exam.
 - marking scheme (e.g. negative marking)
 - time duration of the exam.
 - any breaks allowed in between sections of the ARDE
 - time duration of breaks    
 
It should be noted that our SREs and SEs do not make a distinction between Computer Based Testing (CBT) or paper based Testing (PBT). since some of the ARDEs can possibly be taken as CBT or PBT. our app only provides a digital tool that enables the app users to prepare  for ARDEs and hence our SEs and SREs are always Digitally aided(computer/mobile) Testing so to speak. 
 - Both SE and SRE are kind of practice exams the users take to prepare  for ARDEs
## here are your answers and conflict resolution
1. an iPhone and an ipad count as two separate devices. we will identify devices based on Pub.dev's Flutter Package named Device Info plus 
2. the app's tiers limits are defined  in terms of... 
- daily practice MCQs users can practice daily   
- Number of Sprint exams(SEs) users can take.  
- Number of Simulated real exams(SREs) users can take. 
- Answer explanations users can view
- 
- 
## anonymous users get 
- 20 daily Practice MCQs to take
- 1 sprint exam(SE) . On an attempt to take 2nd SE as anonymous users,  they are gracefully required to sign up.  
-  1 simulated real exam(SRE)  with only half the number of questions found on the real deal exam aka "half length SRE" 
## free users :
free users get to enjoy the app with relatively higher limits than anonymous users. howevet, free users get to use the app for free only for 2 weeks during which they can test out the app with the higher limits compared to anonymous users. During the 2 week period they get... 
- 50 daily Practice MCQs to take
-  Four  SEs. On an attempt to take 5th SE as free users,  they are gracefully required to upgrade to paid tier.  
-  Two  SREs  
## paid users: 
Paid users is the only paid tier with no segreations as basic, mid, pro levels . paid users enjoy
- Truly unlimited daily practice MCQs
- Truly Unlimited SEs
- Trulu unlimited SREs 


---
3. Free User Sprint Exam Contradictions: This has already been answered as part of the answer to your question number 2.
---
4.  Payment Processing Technology Stack: Yes, I plan to use Paddle.com for payments as well as subscription management through their  API Integrating with my Python backend FastAPI.
5. Sprint exam sessions are device-locked, meaning once started on a device, they have to be finished on the same device. A user cannot switch devices while in a sprint exam session.
6. Our methods will be:
- Google authentication
- Facebook authentication
- Phone authentication
- Plain old email password authentication
7. We will use PostgreSQL for the question bank. Correct me if I am wrong,I belive  PostgreSQL does support full-text search.
8. We will stick to basic session management without any real-time synchronization between platforms.Polling for synchronization every 2-3 minutes.
-----------
## additional questions asked by claude
Here are your serial answers.
1. Yes, specify device fingerprinting in the technical architecture.
2. At the end of the two-week trial period, users do not revert to anonymous user limits. They lose access entirely to the app unless they upgrade to a paid tier.
3. Here are the tier limits for answer explanations Users can view:
- anon users: They can see 5 answer explanations for users daily.
- free users: They can see 10 answer explanations for users daily.
- paid users: Truly unlimited answer explanations for users daily.

5. Yes, remove websockets gateway, real-time sync service, But do not remove any real-time notification service.Real-time notifications will make use of firebase's built-in notification service.
6. Yes, remove all references to this Stripe payment method. We will stick to Paddle.com payment service.
-----
---
---
---
---
# post update pending contradictions
1. We will use basic session management with polling synchronization, no real-time web socket connections, and a 2-3 minute polling synchronization.
2. The notifications will be sent as close to real-time as possible, but we will be using Firebase's built-in notification service, so let's stick to this.
3. For timer technology, let's use a WebSocket service for real-time timer synchronization. But I don't think we'll be needing synchronization because we are not switching devices midway during the sprint exam or simulated real exams. The timer is just to keep track, accurate track, of a user's time taken to answer questions during a spring simulated real exam or daily practice questions.
4.Analytics update must complete within 2-3 minutes.
5. IPhone and iPad count as separate devices. We are using Device Info Plus package for Flutter for device fingerprinting.
6. Yes, remove all references to this Stripe payment method. We will stick to Paddle.com payment service.
7. We will use PostgreSQL for the question bank. Correct me if I am wrong,I belive  PostgreSQL does support full-text search.
8. We will use Firebase Cloud Functions
9. Default timer architecture will use client-side backup mechanisms, but the timing needs to be accurate up to milliseconds for each person's answer (whether it's daily practice MCQs, sprint exams, or simulated real exams). We need to build real analytics on how quickly a user is able to answer a question.
