            PROMPT  3: FEATURE STORIES



<!-- #region ROLE_DEFINITION -->
${ROLE_DEFINITION} = "
You're an experienced SaaS Founder with a background in Product Design & Product Management that obsesses about product and solving peoples problems. Your job is to take the app idea, and take on a collaborative / consultative role to build out feature ideas. We are aiming to expand on the feature ideas for the fatures listed  in features_list for our app explained in app_idea

Your job role is to analyze the following technical problem, offering insights from the perspective of a seasoned FAANG Product Design  engineer. Prioritize solutions that are robust, maintainable, and scalable. Consider potential pitfalls, edge cases, and the implications for long-term system health. Provide your analysis as if you were guiding a team through a complex technical decision.";
<!-- #endregion -->

<!-- #region CONSULTATION_APPROACH -->
${CONSULTATION_APPROACH} = "
- Ask clear, numbered questions to clarify requirements for each feature story
- STRICTLY one question per serial number
- Integrate user responses into the evolving feature stories
- Only provide the final output when all key information is gathered
- Accept that some answers may be unavailable at this stage
- Produce the artifact ONLY AFTER you have all the answers or at least those which can be answered for now.
- Focus on features expansion, not detailed UX design at this stage
- Consider scalability, security, and maintainability in all recommendations
";
            <!-- #endregion -->

          
<!-- #region app_details -->
${app_details}="
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
- **Primary**: Full-featured web
  - **Mobile**: iOS and Android via Flutter for on-the-go preparation
  - **Desktop Web**: Full-featured web application for comprehensive study sessions
  - **Responsive Design**: Seamless experience across phone, tablet, and desktop screens
- **Architecture**: Single Flutter codebase supporting mobile, web, and desktop with platform-specific optimizations
";
<!-- #endregion -->

<!-- #region features_list -->
${features_list}="

## Features (MVP)

### Authentication & Multi-Device Session Management
Comprehensive user authentication system supporting Google, Facebook, and phone authentication with strict 3-device limit enforcement and basic session management across platforms.

#### Tech Involved
* Firebase Auth for authentication services
* FastAPI JWT token management service
* Firebase Firestore for session tracking
* Flutter platform detection for device fingerprinting
* Real-time WebSocket connections for session invalidation

#### Main Requirements
* Device fingerprinting must uniquely identify each platform (mobile app vs web browser)
* Session invalidation must propagate to all active devices within 30 seconds
* Anonymous user sessions must seamlessly convert to authenticated sessions with data preservation
* Basic session management without real-time synchronization between platforms
* Automatic session cleanup for inactive devices after 30 days

### Question Bank Management System
Scalable question delivery system with CSV bulk import, admin interface for content management, and intelligent question selection based on difficulty progression and user performance.

#### Tech Involved
* FastAPI microservice for question CRUD operations
* Firebase Cloud Storage for image/video assets
* Cloud SQL (PostgreSQL) for structured question data with full-text search
* Pandas for CSV processing and validation
* Firebase Admin SDK for batch operations
* Elasticsearch for advanced question filtering and search

#### Main Requirements
* CSV import must validate question format, detect duplicates, and handle malformed data gracefully
* Question images must be automatically optimized for mobile (WebP) and desktop (multiple resolutions)
* Admin interface must support bulk editing, question preview, and approval workflows
* Question selection algorithm must balance difficulty progression with weak topic reinforcement
* Content delivery must be cached at CDN level with 24-hour TTL for performance

### Adaptive Sprint Examination System
Timed practice sessions with configurable question counts, real-time performance tracking, and seamless integration with analytics for difficulty adjustment and progress measurement.

#### Tech Involved
* FastAPI WebSocket service for real-time timer synchronization
* Firebase Firestore for sprint session persistence
* React-like state management in Flutter using Riverpod
* Background isolates for timer precision
* Firebase Cloud Functions for sprint result processing

#### Main Requirements
* Timer must continue accurately even during network interruptions with client-side backup
* Sprint sessions must be resumable with exact time remaining and question state preservation on the same device
* Ad display timing must be excluded from sprint timers through precise timestamp tracking
* Sprint results must trigger immediate analytics updates and difficulty adjustments
* Sprint sessions are device-locked once started to maintain session integrity

### Real-Time Analytics & Performance Tracking
Comprehensive user performance analytics with regression detection, peer comparisons, and personalized insights generation for adaptive learning recommendations.

#### Tech Involved
* Firebase Analytics for user behavior tracking
* FastAPI analytics microservice with background job processing
* Cloud SQL for historical performance data with time-series optimization
* Firebase Cloud Functions for real-time metric calculations
* Chart.js integration in Flutter web for data visualization
* Celery with Redis for asynchronous analytics processing

#### Main Requirements
* Performance regression detection must analyze rolling 30-day windows with statistical significance testing
* Peer comparison calculations must be privacy-preserving with anonymized data aggregation
* Analytics updates must complete within 60 seconds of sprint completion
* Historical data must be efficiently queryable for trend analysis over 6-month periods
* Real-time dashboards must update automatically without manual refresh across all platforms

### AI-Powered Coaching & Explanation System
Intelligent tutoring system combining pre-written expert explanations with AI-powered follow-up conversations using external LLM APIs for personalized learning support.

#### Tech Involved
* FastAPI service with async LLM API integration (OpenAI, Anthropic, Gemini)
* Firebase Firestore for conversation history and explanation caching
* Content management system for expert explanations with rich media support
* Rate limiting and cost management for LLM API calls
* Firebase Cloud Storage for video explanations with adaptive streaming

#### Main Requirements
* Expert explanations must support rich media (images, equations, videos) with cross-platform rendering
* AI conversations must maintain context across multiple follow-up questions within sessions
* LLM responses must be cached intelligently to reduce API costs while maintaining personalization
* Explanation delivery must adapt to device capabilities (full video on desktop, compressed on mobile)
* Content versioning must support A/B testing of explanation effectiveness

### Social Accountability & Peer Monitoring
Consensual performance sharing system with real-time notifications, peer comparisons, and social encouragement features to maintain study motivation and healthy competition.

#### Tech Involved
* Firebase Cloud Messaging for real-time push notifications
* FastAPI WebSocket service for live peer activity feeds
* Firebase Firestore with security rules for privacy-controlled data sharing
* Flutter local notifications for cross-platform notification handling
* Privacy consent management system with granular permissions

#### Main Requirements
* Peer monitoring invitations must require explicit mutual consent with easy revocation
* Real-time notifications must be delivered within 15 seconds of peer activity
* Performance sharing must be granular (overall progress vs detailed analytics) with user control
* Social features must comply with privacy regulations and support data deletion requests
* Notification frequency must be intelligently throttled to prevent spam while maintaining engagement

### Subscription & Payment Integration
Comprehensive monetization system with Stripe payment processing, Paddle.com subscription management, and integrated advertising system with precise timing controls.

#### Tech Involved
* Stripe API for payment processing with webhook handling
* Paddle.com SDK for subscription lifecycle management
* FastAPI payment service with idempotent transaction handling
* Firebase Security Rules for subscription status enforcement
* Google AdMob integration with Flutter ad plugins
* Webhook verification and retry logic for payment events

#### Main Requirements
* Payment processing must handle failed transactions with automatic retry and user notification
* Subscription status must propagate to all user devices within 60 seconds of payment confirmation
* Ad display must be precisely timed to exclude ad loading from practice session timers
* Subscription upgrades/downgrades must be handled seamlessly with prorated billing
* Payment webhook failures must trigger automatic reconciliation processes

### Simulated Exam Environment
High-fidelity exam simulation system replicating actual test conditions with precise timing, authentic question structures, and comprehensive performance analysis matching real exam formats.

#### Tech Involved
* FastAPI exam orchestration service with WebSocket real-time communication
* Firebase Firestore for exam state persistence and recovery
* Flutter full-screen mode with platform-specific kiosk implementations
* Background services for preventing interruption during exam mode
* Cloud Functions for exam scoring and analysis generation

#### Main Requirements
* Exam environment must prevent platform-specific interruptions (notifications, calls, system dialogs)
* Timing precision must account for network latency with client-side backup timers
* Exam sessions are device-locked once started and cannot be transferred to other devices
* Question delivery must pre-load next questions to eliminate loading delays during timed sections
* Exam results must generate detailed performance breakdowns matching actual test score reports

";
            <!-- #endregion -->

            <!-- #region Output format -->
<!-- #region output_format -->
${output_format} = "
Return your output in Markdown ONLY, without pre-text or post-text descriptions.

## Features List  
### Feature Category  
#### Feature  

- User Stories
  - List personas and their user stories. For each persona, provide several stories in this format: * As a X, I want to Y, so that Z.  
    ###\# UX/UI Considerations  
    Bullet-point the step-by-step journey a user will have interacting with the product in detail with regard to this specific feature.
- Core Experience
  - Description of different "states" of that screen]
  - How it handles state changes visually]
  - Animations, information architecture progressive disclosure, visual hierarchy, etc
- Advanced Users & Edge Cases  
  - Description of different "states" of that screen
  - How it handles state changes visually
  - Animations, information architecture, progressive disclosure, visual hierarchy, etc
---
Repeat the above structure for each feature in the features_list.
";
            <!-- #endregion -->

            <!-- #region Warnings-Guidelines -->
<!-- #region WARNINGS_GUIDELINES -->
${WARNINGS_GUIDELINES} = "
 - **Bold simplicity** with intuitive navigation creating frictionless experiences  
- **Breathable whitespace** complemented by strategic color accents for visual hierarchy  
- **Strategic negative space** calibrated for cognitive breathing room and content prioritization  
- **Systematic color theory** applied through subtle gradients and purposeful accent placement  
- Typography hierarchy** utilizing weight variance and proportional scaling for information architecture  
- **Visual density optimization** balancing information availability with cognitive load management  
- **Motion choreography** implementing physics-based transitions for spatial continuity  
- **Accessibility-driven contrast ratios** paired with intuitive navigation patterns ensuring universal usability  
- **Feedback responsiveness** via state transitions communicating system status with minimal latency  
- **Content-first layouts** prioritizing user objectives over decorative elements for task efficiency  
- **User goals and tasks** \- Understanding what users need to accomplish and designing to make those primary tasks seamless and efficient  
- **Information architecture** \- Organizing content and features in a logical hierarchy that matches users' mental models  
- **Progressive disclosure** \- Revealing complexity gradually to avoid overwhelming users while still providing access to advanced features  
- **Visual hierarchy** \- Using size, color, contrast, and positioning to guide attention to the most important elements first  
- **Affordances and signifiers** \- Making interactive elements clearly identifiable through visual cues that indicate how they work  
- **Consistency** \- Maintaining uniform patterns, components, and interactions across screens to reduce cognitive load  
- **Accessibility** \- Ensuring the design works for users of all abilities (color contrast, screen readers, keyboard navigation)  
- **Error prevention** \- Designing to help users avoid mistakes before they happen rather than just handling errors after they occur  
- **Feedback** \- Providing clear signals when actions succeed or fail, and communicating system status at all times  
- **Performance considerations** \- Accounting for loading times and designing appropriate loading states  
- **Mobile vs. desktop considerations** \- Adapting layouts and interactions for different device capabilities and contexts  
- **Responsive design** \- Ensuring the interface works well across various screen sizes and orientations  
- **User testing feedback loops** \- Incorporating iterative testing to validate assumptions and improve the design  
- **Platform conventions** \- Following established patterns from iOS/Android/Web to meet user expectations  
- **Microcopy and content strategy** \- Crafting clear, concise text that guides users through the experience  
- **Aesthetic appeal** \- Creating a visually pleasing design that aligns with brand identity while prioritizing usability  
- **Animations \-** Crafting beautiful yet subtle animations and transitions that make the app feel professional
";
<!-- #endregion -->

