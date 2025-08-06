
## Summary of 

        # 2 High Level Details TEMPLATE PROMPT 




<!-- #region role_definition -->
${ROLE_DEFINITION}="You are Dr. IHK, a Senior Staff Software Engineer with over 20 years of experience at Google and Amazon, where you've led the design and implementation of highly scalable, fault-tolerant backend systems serving billions of requests daily. Your expertise lies in distributed systems architecture, system based on Micro-services architecture, performance optimizations, and ensuring operational excellence in production environments.
Your job role  is to analyze the following technical problem, offering insights from the perspective of a seasoned FAANG principal engineer. Prioritize solutions that are robust, maintainable, and scalable. Consider potential pitfalls, edge cases, and the implications for long-term system health. Provide your analysis as if you were guiding a team through a complex technical decision.";
<!--#endregion-->

<!-- #region task -->
${task} = "help me brainstorm the overall technical structure of my application (details of the app in app_details_and_features_list) on a high level thinking like a highly skilled Professional Senior Software Engineer with FAANG level experience "
<!--#endregion-->

<!-- #region consultation_approach -->
${CONSULTATION_APPROACH} = "
- Ask clear, serial numbered questions to clarify requirements
- STRICTLY one question per serial number
- Integrate user responses into the evolving plan.
- Only provide the final output when all key information is gathered
- Accept that some answers may be unavailable at this stage
- produce the artifact ONLY AFTER you haveall the answered orat least those which can be answered for now. 
    ";
<!--#endregion-->

<!-- #region tech_stack -->
${TECH_STACK} = "
* The frontend will be built in Flutter with a Micro-services architecture.
* **Riverpod** wilbe used for state management.
* **Firebase** infrastructure will power the backend.
* The backend will be built in Python using FastAPI
* My app will only talk to **API endpoints**
* The authentication will use **Firbase Auth**
* front-end will only and only talk to API endpoints for the app
* I will use Google Analytics  For analytics in my application
* I will use Stripe for payments in my application
* subscriptions will be managed by paddle.com

"
<!--#endregion-->

<!-- #region app_details_and features_list -->
${app_details_and_features_list} = "
# Entry-Test-Guru: Complete Project Specification

## Elevator Pitch
Entry-Test-Guru is a comprehensive exam preparation app that transforms competitive test preparation through intelligent analytics, adaptive learning, and personalized coaching. Students preparing for SAT, GRE, GMAT, TOEFL, and Pakistani engineering/medical entrance exams get unlimited practice with AI-driven performance insights, expert explanations, and structured study plans that adapt to their exam timeline.

## Problem Statement
Students preparing for competitive entrance exams face multiple critical challenges:
- **High-stakes pressure**: Most exams are once-yearly with no retake options within the academic cycle
- **Massive question banks**: 10,000+ questions across multiple subjects make comprehensive preparation overwhelming  
- **Lack of personalized feedback**: Generic study materials don't address individual weaknesses
- **Time management struggles**: Students can't effectively simulate real exam conditions or manage preparation timelines
- **Inconsistent performance tracking**: No systematic way to identify knowledge gaps or track improvement over time
- **Limited adaptive learning**: Static study plans don't adjust based on performance or remaining time until exam

## Target Audience

### Target Audience Segmentation

**Primary Segments:**
- **High School Graduates (17-19 years)**: Preparing for undergraduate engineering/medical college entrance exams in Pakistan
- **College Graduates (21-25 years)**: Preparing for international standardized tests (SAT, GRE, GMAT, TOEFL)
- **Young Students (13-15 years)**: Preparing for Cadet College entrance examinations
- **Graduate Students (22-26 years)**: Preparing for civil service competitive exams

**User Personas:**
- **The Determined Achiever**: High-performing student seeking systematic preparation with detailed analytics
- **The Time-Crunched Learner**: Student with limited study time needing efficient, targeted practice
- **The Anxious Test-Taker**: Student requiring confidence-building through progressive difficulty and expert coaching

## Unique Selling Points (USP)

1. **Adaptive Difficulty Progression**: Five-level difficulty system from "getting feet wet" to expert level
2. **Intelligent Time Compression**: Dynamic study plans that adapt to remaining exam preparation time
3. **Performance Regression Detection**: Advanced analytics identifying topics where performance has declined
4. **Expert-AI Hybrid Coaching**: Pre-written expert explanations combined with AI-powered follow-up Q&A
5. **Flexible Sprint System**: Customizable practice sessions (10-50 questions) based on available time
6. **Peer Performance Tracking**: Social accountability through consensual performance monitoring
7. **Exam-Specific Simulation**: Authentic recreation of actual exam conditions and structures

## Target Platforms
- **Primary**: Cross-platform deployment across all major platforms
  - **Mobile**: iOS and Android via Flutter for on-the-go preparation
  - **Desktop Web**: Full-featured web application for comprehensive study sessions
  - **Responsive Design**: Seamless experience across phone, tablet, and desktop screens
- **Architecture**: Single Flutter codebase supporting mobile, web, and desktop with platform-specific optimizations

## Features List

### Authentication & User Management
- [ ] As a new user, I can sign up using Google, Facebook, or phone authentication across all platforms
- [ ] As a visitor, I can continue as an anonymous user with limited features on mobile, tablet, or desktop
- [ ] As a user, I can log in across maximum 3 devices (any combination of mobile, tablet, desktop) with automatic sync
- [ ] As a user, I can seamlessly switch between mobile and desktop while maintaining my session and progress
- [ ] As a user, I can manage my subscription and billing through integrated Paddle.com interface on any platform

### Onboarding & Exam Selection
- [ ] As a new user, I must select my exam category (Engineering/Medical/GRE/GMAT/TOEFL/SAT/Cadet College)
- [ ] As a user, I can select specific topics where I need focused practice
- [ ] As a user, I can set my actual exam date to enable time-compressed study plans
- [ ] As a user, I can choose my current skill level for progressive difficulty matching

### Question Practice System
- [ ] As an anonymous user, I can practice 20 MCQs with expert coaching
- [ ] As a free user, I can practice 20 daily MCQs for 2 weeks after signup
- [ ] As a paid user, I can access unlimited daily MCQ practice
- [ ] As a user, I can select difficulty levels (5 progressive levels from beginner to expert)
- [ ] As a user, I can filter questions by subject, topic, and difficulty
- [ ] As a user, I can report questions for reconsideration if I believe my answer was correct

### Sprint Examination System
- [ ] As a user, I can select sprint duration (10, 20, 25, 30, 35, 40, 45, or 50 questions)
- [ ] As an anonymous user, I can take 1 sprint exam before requiring signup
- [ ] As a free user, I can take 3 sprint exams weekly for 2 weeks
- [ ] As a paid user, I can take unlimited sprint exams
- [ ] As a user, sprint timing excludes ad loading/display time
- [ ] As a user, I receive immediate performance feedback after each sprint

### Simulated Real Exams
- [ ] As an anonymous user, I can take one half-length simulated exam
- [ ] As a free user, I cannot access full simulated exams (upgrade required)
- [ ] As a paid user, I can take unlimited full-length simulated exams
- [ ] As a user taking SAT/GRE/GMAT/TOEFL, I experience authentic exam structure and timing
- [ ] As a user taking Pakistani entrance exams, I experience accurate time limits, question counts, and negative marking rules
- [ ] As a user, I can pause and resume simulated exams with automatic time tracking

### Learning & Coaching System
- [ ] As a user, I receive step-by-step expert explanations for incorrect answers
- [ ] As a user, I can access video explanations for complex problems
- [ ] As a user, I can ask follow-up questions about explanations through AI chat
- [ ] As a paid user, I can request on-demand coaching for specific topics or question types
- [ ] As a paid user, I can access the learning center with expert tips and exam strategies

### Analytics & Performance Tracking
- [ ] As a user, I can view my overall performance metrics and trends
- [ ] As a user, I can see my percentile ranking compared to other users
- [ ] As a user, I can identify topics where my performance has recently declined
- [ ] As a user, I can track my historical performance on previously strong topics
- [ ] As a user, I can view detailed analysis of strengths, weaknesses, and improvement areas
- [ ] As a user, I can monitor my practice consistency and daily progress

### Personalized Study Plans
- [ ] As a user, I receive a comprehensive multi-week study curriculum with daily goals
- [ ] As a user, I can time-compress my study plan based on remaining days until exam
- [ ] As a user, I receive dynamic recommendations for next practice topics
- [ ] As a paid user, I can follow tailored improvement programs focusing on weak areas
- [ ] As a paid user, I can compare my current performance to historical data on improvement programs

### Social & Accountability Features
- [ ] As a user, I can add up to 5 other users to monitor my performance (with their consent)
- [ ] As a user, I can consent to let specific users monitor my performance for mutual accountability
- [ ] As a user, I can view performance comparisons with my accountability partners
- [ ] As a user, I can send and receive encouragement messages through the platform

### Monetization & Ads
- [ ] As a non-paid user, I see ads every 5 questions (excluding timing)
- [ ] As a user, I can upgrade to paid subscription via Stripe integration
- [ ] As a user, I can choose monthly or annual subscription (annual offers savings)
- [ ] As a user, my subscription is managed through Paddle.com platform

### UX/UI Considerations

#### Core Interface States
- [ ] **Dashboard Screen**: Clean overview showing daily progress, upcoming study goals, and quick access to practice modes
  - **Mobile**: Card-based layout with swipeable sections and prominent CTAs
  - **Desktop/Web**: Multi-column layout with expanded analytics and side navigation
  - Loading state with skeleton screens optimized for each screen size
  - Empty state for new users with onboarding prompts adapted to platform capabilities
  - Data-rich state with performance charts and recommendations utilizing available screen real estate
- [ ] **Question Interface**: Distraction-free question display with clear answer options and timer
  - **Mobile**: Full-screen question with touch-optimized answer buttons
  - **Desktop/Web**: Centered question area with keyboard shortcuts and expanded explanation panel
  - Question loading with smooth transitions across all platforms
  - Answer selection with immediate visual feedback (touch haptics on mobile, hover states on desktop)
  - Explanation modal overlay with expert content and AI chat option sized appropriately for each platform
- [ ] **Sprint/Exam Mode**: Full-screen immersive experience replicating actual exam conditions
  - **Mobile**: Portrait/landscape optimization with gesture-based navigation
  - **Desktop/Web**: Distraction-free full-screen mode with keyboard navigation support
  - Pre-exam setup with time selection and instructions adapted to input methods
  - Active exam state with minimal UI and prominent timer positioned for optimal visibility
  - Post-exam results with detailed breakdown utilizing full screen capabilities
- [ ] **Analytics Dashboard**: Rich data visualization showing performance trends and insights
  - **Mobile**: Vertically stacked charts with touch-based interaction
  - **Desktop/Web**: Multi-panel dashboard with advanced filtering and larger data visualizations
  - Interactive charts with platform-appropriate interaction methods (touch vs mouse)
  - Comparison views for historical and peer performance with responsive layouts
  - Action-oriented insights with clear next steps optimized for each platform's UX patterns

#### Progressive Disclosure & Information Architecture
- [ ] Difficulty selection uses intuitive water-depth metaphors ("getting feet wet" to "deep dive")
- [ ] Question explanations reveal progressively from hint → step-by-step → full solution
- [ ] Study plan details expand from daily overview to detailed topic breakdown
- [ ] Performance analytics start with summary metrics and allow drilling into specific areas

#### Visual Hierarchy & Animations
- [ ] Primary CTAs use distinctive colors and platform-appropriate interaction feedback (haptic on mobile, hover on desktop)
- [ ] Correct/incorrect answer feedback with satisfying micro-animations optimized for each platform
- [ ] Progress indicators with smooth filling animations that utilize available screen space effectively
- [ ] Platform-specific navigation patterns (bottom tabs on mobile, side navigation on desktop)
- [ ] Smooth page transitions using Flutter's hero animations across all platforms for seamless navigation
- [ ] Loading states with engaging animations that scale appropriately for screen size
- [ ] Keyboard shortcuts for power users on desktop web version
- [ ] Touch gestures optimization for mobile with swipe actions where appropriate

### Non-Functional Requirements

#### Performance
- [ ] Question loading must complete within 2 seconds on 3G connections (mobile) and 1 second on broadband (desktop)
- [ ] App startup time under 3 seconds on mid-range mobile devices, under 2 seconds on desktop browsers
- [ ] Smooth 60fps animations and transitions throughout the interface across all platforms
- [ ] Image and video content optimized for mobile data usage with higher quality options for desktop/WiFi
- [ ] Efficient memory usage to prevent crashes during long study sessions on resource-constrained mobile devices
- [ ] Optimized web browser performance for desktop users accessing via standard browsers

#### Scalability
- [ ] Microservices architecture supporting horizontal scaling
- [ ] Database design supporting 100,000+ concurrent users
- [ ] CDN integration for global content delivery
- [ ] Auto-scaling Firebase functions for peak usage periods
- [ ] Efficient caching strategy for frequently accessed questions and explanations

#### Security
- [ ] Firebase Auth integration with secure token management
- [ ] API rate limiting to prevent abuse and ensure fair usage
- [ ] Secure payment processing through Stripe with PCI compliance
- [ ] Data encryption in transit and at rest
- [ ] User content reporting and moderation system

#### Accessibility
- [ ] WCAG 2.1 AA compliance for inclusive design across mobile and desktop interfaces
- [ ] Screen reader compatibility for visually impaired users on all platforms
- [ ] High contrast mode support with platform-specific implementations
- [ ] Scalable text options for users with reading difficulties, utilizing platform text scaling preferences
- [ ] Voice-over support for question reading on mobile, keyboard navigation on desktop
- [ ] Platform-appropriate focus management for users with motor disabilities

## Technical Architecture

### Backend Infrastructure
- **API Framework**: Python FastAPI with microservices architecture
- **Authentication**: Firebase Auth with multi-device session management
- **Database**: Firebase Firestore for user data, Cloud SQL for question banks
- **File Storage**: Firebase Storage for video explanations and images
- **Analytics**: Google Analytics integration with custom event tracking
- **Payments**: Stripe for processing, Paddle.com for subscription management

### Frontend Technology
- **Framework**: Flutter for true cross-platform deployment (iOS, Android, Web, Desktop)
- **State Management**: Provider or Riverpod for scalable state handling across all platforms
- **API Communication**: RESTful APIs with proper error handling and retry logic optimized for mobile and desktop
- **Platform-Specific Features**: 
  - Mobile: Push notifications, haptic feedback, camera access for document scanning
  - Desktop/Web: Keyboard shortcuts, multi-window support, advanced data export capabilities
  - Web Browser: Standard web application accessible through any modern browser
- **Responsive Design**: Adaptive layouts that scale from mobile screens to large desktop displays

### Third-Party Integrations
- **Payment Processing**: Stripe API for secure transactions
- **Subscription Management**: Paddle.com for recurring billing
- **Analytics**: Google Analytics for user behavior tracking
- **Push Notifications**: Firebase Cloud Messaging for study reminders
- **Content Delivery**: Firebase Hosting with global CDN

### Critical Microservices
1. **User Management Service**: Authentication, profiles, subscription status
2. **Question Bank Service**: Question delivery, difficulty matching, content management
3. **Analytics Service**: Performance tracking, progress calculation, insights generation
4. **Exam Simulation Service**: Timer management, exam structure replication
5. **Content Delivery Service**: Expert explanations, video streaming, AI chat responses
6. **Notification Service**: Study reminders, achievement alerts, social updates

## Monetization

**Revenue Model**: Freemium subscription with advertising support

**Revenue Streams**:
1. **Primary**: Monthly/Annual subscriptions through Paddle.com
   - Monthly subscription: Standard rate
   - Annual subscription: Discounted rate for cost savings
   - 3-device limit per subscription
   
2. **Secondary**: Advertising revenue from non-paid users
   - Ads displayed every 5 questions
   - Ad timing excluded from practice session timers
   - Non-intrusive ad placement to maintain user experience

**Pricing Strategy**:
- Single paid tier with full feature access
- No multiple subscription levels (Basic/Premium/Pro)
- Annual subscriptions offer cost savings to encourage longer commitments
- Anonymous and free users serve as conversion funnel with meaningful trial experience

**Customer Acquisition**:
- Anonymous user trial (20 questions + 1 sprint + half exam) for immediate value demonstration
- 2-week free user experience (20 daily questions + 3 weekly sprints) for deeper engagement
- Social accountability features encouraging organic user acquisition through peer invitations.
"
<!--#endregion-->

<!-- #region output_format -->
${OUTPUT-FORMAT} = "
Return your format in Markdown ONLY , without pre-text or post-text descriptions.  
## Features (MVP)  
### Feature Name  
2-3 sentence summary of what the feature is or does

#### Tech Involved  
* Main Technologies Involved w/ Feature

#### Main Requirements  
* Any  
* Requirements  
* Of Feature  
* That Impact  
* Tech Choices & Implementations

## System Diagram  
An image detailing a full system diagram of the MVP. Please create a clean mermaid diagram with clear service relationships
";
<!--#endregion-->

<!-- #region context -->
It's imperative that your response is highly-detailed. I would prefer if you took serious time to think about your response, latency does not matter to me right now, only accuracy and quality. Provide specific implementation guidelines at every step, with detailed, grounded examples.If different features must interact with each other, you need to specify that in BOTH feature specifications.For each feature, think through the full scope of CRUD operations associated with that feature.  Here is the context for the app and its features.Ask clarification questions if you need to before dpitting out a full rersponse. 
<!--#endregion-->










