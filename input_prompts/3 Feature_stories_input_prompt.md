# PROMPT  3: FEATURE STORIES

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

EntryTestGuru is a comprehensive exam preparation platform that helps students master critical admission tests (ECAT, MCAT, CCAT, GMAT, GRE, SAT) through intelligent practice, precise analytics, and adaptive learning. With over 10,000+ MCQs, real-time performance tracking, ARDE probability insights, and personalized study plans, we transform high-stakes exam preparation from stressful cramming into confident, data-driven success.

## Problem Statement

Students preparing for once-yearly admission exams face three critical challenges:

1. **High Stakes, No Second Chances**: Most exams (ECAT, MCAT, CCAT) offer only one attempt per year with no retakes
2. **Lack of Targeted Practice**: Generic study materials don't identify individual weaknesses or optimize time allocation based on actual exam patterns
3. **Poor Time Management Under Pressure**: Students struggle with time constraints and exam anxiety without realistic practice environments and strategic question prioritization

Current solutions are either too generic (standard textbooks) or too expensive (private tutoring), leaving a gap for intelligent, affordable, personalized preparation that leverages real exam data.

## Target Audience

### Target Audience Segmentation

**Primary Segments:**

* **High School Graduates (16-18 years)**: Preparing for ECAT, MCAT, GMAT, GRE, SAT
* **Middle School Students (12-14 years)**: Preparing for CCAT (7th-8th graders)

**Geographic Focus:**

* Primary: Pakistan (ECAT, MCAT, CCAT)
* Secondary: International students (GMAT, GRE, SAT)

**User Tiers:**

* **Anonymous Users**: Trying the platform (20 MCQs + 2 explanations daily, 1 SE, 1 half-length SRE)
* **Free Users**: 2-week trial with enhanced limits (50 daily MCQs + 4 explanations daily with AI tutoring, 4 SEs, 2 SREs, max 3 devices)
* **Paid Users**: Unlimited access with premium features (unlimited MCQs + explanations + sprint exams + simulated real exams + fair usage based unlimited AI follow-up tutoring for answer explanations, max 3 devices)

## Unique Selling Points (USP)

1. **ARDE Intelligence**: Questions tagged with Actual Real Deal Exam (ARDE)  appearance probability and historical frequency data
2. **Precision Analytics**: Track time-per-question, attempt patterns, and topic mastery with surgical precision
3. **Adaptive Question Variations**: Dynamic question variants that test true understanding, not memorization
4. **Realistic Exam Simulation**: Perfect replicas of actual exam conditions, timing, and marking schemes
5. **Strategic Study Plans**: Time-compressed curricula that prioritize high-probability questions based on ARDE dates
6. **Expert-Created Content**: 10,000+ questions with step-by-step explanations, video tutorials, and ARDE probability insights
7. **Affordable Access**: Comprehensive preparation at a fraction of private tutoring costs



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

Features (MVP)

### Authentication & User Management

Comprehensive authentication system supporting anonymous users, social logins, and seamless tier transitions with Firebase Auth integration. Handles user onboarding, exam category selection, tier-based access control, and multi-device management with 3-device limit enforcement across the entire platform.

#### Tech Involved

* Firebase Auth (Google/Facebook/Phone/Email)
* Flutter device_info_plus package for device fingerprinting
* Flutter Riverpod for state management
* FastAPI user management service with device tracking
* Cloud Firestore for user profiles, preferences, and device registry
* JWT token management for API authentication with device validation
* Real-time notifications via Firebase Cloud Messaging for device management

#### Main Requirements

* Anonymous user session tracking without compromising privacy
* Seamless upgrade path from anonymous → free → paid tiers
* Real-time sync of user tier limitations and usage statistics
* Secure token refresh and validation across all API endpoints
* Support for multiple authentication providers with unified user experience
* 3-device limit enforcement with device fingerprinting and management
* Interactive device management interface showing registered devices with removal capabilities
* 4th device login flow: block access, notify existing devices, require device removal before allowing new device
* Real-time device status updates across all active sessions
* Device metadata display with user-customizable device names, automatic device type detection, browser session tracking, last active timestamps, and registration dates
* Cross-browser device consolidation using automated server-side fingerprint similarity matching (85% threshold) to prevent user manipulation

### Question Bank & Content Management System

Centralized question repository serving 10,000+ MCQs with advanced filtering, ARDE probability tagging, and comprehensive content versioning. Supports batch content updates with approval workflows and real-time question delivery optimized for mobile consumption.

#### Tech Involved

* Cloud Firestore with composite indexing for complex queries
* Firebase Storage for images and video content
* FastAPI content management service with async operations
* Redis caching layer for frequently accessed questions
* Content delivery via Firebase CDN

#### Main Requirements

* Millisecond-precision tracking of question interactions and timing data
* Complex filtering by subject, difficulty, ARDE probability, and user performance history
* Batch content creation workflow with review/approval pipeline
* Question variation support with dynamic variable substitution
* Efficient content caching strategy supporting 100K concurrent users
* Version control for questions with rollback capabilities

### Practice Mode & Learning Engine

Interactive practice system with immediate feedback, attempt tracking, and intelligent question selection based on user performance patterns. Integrates with analytics engine for precision learning insights and supports tier-based explanation access controls.

#### Tech Involved

* FastAPI practice session service with WebSocket support
* Cloud Firestore real-time listeners for live progress tracking
* Redis for session state management and attempt counting
* Flutter timer widgets with millisecond precision
* Riverpod for reactive state management of practice sessions

#### Main Requirements

* Millisecond-level timing precision for each question attempt
* Real-time enforcement of tier-based daily limits (20/50/unlimited MCQs)
* Support for up to 3 attempts per question with state persistence
* Integration with explanation service for tier-based access control
* Bookmark functionality with cross-device synchronization
* Offline capability with automatic sync on connectivity restoration

### Sprint Exams & Simulated Real Exams

Comprehensive exam simulation engine delivering timed assessments with configurable parameters and realistic exam conditions. Provides detailed performance analytics and supports both custom sprint configurations and standardized real exam replicas.

#### Tech Involved

* FastAPI exam orchestration service with precise timing controls
* Cloud Firestore for exam configuration and results storage
* WebSocket connections for real-time exam state synchronization
* Background Cloud Functions for automated grading and analytics
* Redis for exam session state management

#### Main Requirements

* Precise timer implementation with pause/resume capabilities for break intervals
* Configurable question selection algorithms based on difficulty and ARDE probability
* Real-time exam state persistence to handle connectivity interruptions
* Comprehensive scorecard generation with detailed performance breakdowns
* Integration with analytics engine for historical trend analysis
* Tier-based exam access controls (1/4/unlimited for anonymous/free/paid)

### AI-Powered Tutoring & Explanation System

Intelligent tutoring system providing contextual explanations and follow-up discussions using external LLM APIs. Implements fair usage policies with tier-based access controls and conversation context management for enhanced learning experiences.

#### Tech Involved

* FastAPI AI orchestration service with multiple LLM provider integrations
* OpenAI API, Anthropic Claude, Google Gemini API adapters
* Cloud Firestore for conversation history and context storage
* Rate limiting and quota management via Redis
* Background jobs for explanation generation and caching

#### Main Requirements

* Integration with multiple LLM providers (OpenAI, Anthropic, Gemini, Mistral)
* Tier-based explanation access control (2/4/unlimited daily explanations)
* Context-aware conversation management for follow-up questions
* Fair usage policy implementation with intelligent throttling
* Explanation caching strategy to optimize API costs and response times
* Quality filtering and content moderation for generated responses

### Analytics & Performance Tracking Engine

Comprehensive analytics platform capturing millisecond-precision user interactions, learning patterns, and performance metrics. Provides both real-time insights and historical trend analysis with specialized ARDE probability performance tracking.

#### Tech Involved

* Separate Cloud Firestore database for analytics data isolation
* BigQuery for complex analytical queries and data warehousing
* Google Analytics integration for app usage insights
* FastAPI analytics service with real-time data processing
* Background Cloud Functions for metric aggregation and computation

#### Main Requirements

* Millisecond-precision timing data capture for all user interactions
* Separate database architecture isolating learning analytics from operational data
* Real-time performance metric computation and caching
* Historical trend analysis with data retention policies
* Export functionality for external analysis tools
* ARDE probability performance correlation and strategic recommendations
* Business intelligence metrics for conversion funnel optimization

### Subscription Management & Monetization

Complete subscription lifecycle management integrated with Paddle.com for payment processing and Google AdSense for free tier monetization. Handles tier transitions, usage enforcement, and billing automation with comprehensive admin controls.

#### Tech Involved

* Paddle.com API integration for subscription management
* Google AdSense integration with Flutter ad widgets
* FastAPI subscription service with webhook handling
* Cloud Functions for automated billing and tier management
* Cloud Firestore for subscription state and usage tracking

#### Main Requirements

* Seamless integration with Paddle.com for global payment processing
* Real-time subscription status synchronization via webhooks
* Tier-based feature access enforcement across all system components
* Advertisement serving with timing exclusion from performance analytics
* Automated billing cycle management with failure handling
* Admin dashboard for subscription analytics and customer support

### Social Features & Community Platform

Community-driven learning platform with leaderboards, study groups, and competitive challenges. Supports real-time progress sharing, comparative analytics, and social accountability features to enhance user engagement and retention.

#### Tech Involved

* Cloud Firestore with real-time listeners for social data
* FastAPI social service with notification orchestration
* Firebase Cloud Messaging for push notifications
* Redis for leaderboard computation and caching
* Background jobs for challenge processing and reward distribution

#### Main Requirements

* Real-time leaderboard updates with efficient ranking algorithms
* Study group management with privacy controls and member permissions
* Comparative analytics showing individual vs. group performance metrics
* Push notification system for social engagement and milestone celebrations
* Challenge creation and participation tracking with ARDE probability themes
* Social sharing integration with external platforms

### Device Management & Account Settings

Comprehensive device management system allowing users to view, monitor, and control their registered devices with real-time status updates and intelligent browser consolidation. Provides intuitive interface for device removal when attempting to login on additional devices beyond the 3-device limit, with desktop browsers consolidated as single devices.

#### Tech Involved

* Flutter device management UI components with real-time updates and browser session displays
* Flutter web platform channels and dart:html for web machine-level identification
* Cloud Firestore device registry with real-time synchronization for cross-device management visibility
* Cloud Firestore real-time listeners for device status synchronization across browser sessions
* FastAPI device management service with CRUD operations and browser session tracking
* Firebase Cloud Messaging for cross-device notifications and consolidation alerts
* Device metadata collection and display with browser session details (Chrome, Firefox, Safari active sessions)

#### Main Requirements

* Real-time device registry display showing all registered devices with browser session breakdowns
* Automated server-side device consolidation using weighted fingerprint similarity algorithm (85% threshold)
* Interactive device removal functionality with immediate effect across all browser sessions
* 4th device login workflow: block access, display removal interface with browser session details, require action before proceeding
* Push notifications to existing devices when new device attempts login with browser/machine context
* Device status monitoring (online/offline, last active timestamp) with per-browser session granularity
* Device nickname editing functionality allowing users to personalize their device names (e.g., "My Work Laptop", "Home Desktop")
* Browser session tracking showing active browsers per desktop device (Chrome, Firefox, Safari, etc.)
* Immediate session termination on device removal with graceful user experience across all browser sessions
* Device management accessible from account settings on all platforms with consolidated desktop view

### Content Quality Assurance & Support System

Quality management system for user-generated feedback, content corrections, and customer support workflows. Implements automated issue tracking with admin review processes and maintains content integrity across the platform.

#### Tech Involved

* FastAPI support ticket management service
* Cloud Firestore for issue tracking and resolution workflows
* Email integration for customer support communications
* Admin dashboard components for content review and user management
* Automated content flagging and quality scoring algorithms

#### Main Requirements

* In-app issue reporting system with categorization and priority handling
* Admin review workflow for content corrections and quality control
* Customer support integration with ticketing system and phone support
* Automated content quality monitoring with flagging mechanisms
* User feedback aggregation and analysis for continuous improvement

";
            <!-- #endregion -->


<!-- #region output_format -->
${output_format} = "

Return your output in Markdown ONLY, without pre-text or post-text descriptions.

## Features List  
### Feature Category  
#### Feature  

- User Stories
  - List personas and their user stories. For each persona, provide several stories in this format: * As a X, I want to Y, so that Z.  
    #### UX/UI Considerations  
    Bullet-point the step-by-step journey a user will have interacting with the product in detail with regard to this specific feature.
- ### Core Experience
  - Description of different "states" of that screen]
  - How it handles state changes visually]
  - Animations, information architecture progressive disclosure, visual hierarchy, etc
- ### Advanced Users & Edge Cases  
  - Description of different "states" of that screen
  - How it handles state changes visually
  - Animations, information architecture, progressive disclosure, visual hierarchy, etc
---
Repeat the above structure for each feature in the features_list.
";
            <!-- #endregion -->

            
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

