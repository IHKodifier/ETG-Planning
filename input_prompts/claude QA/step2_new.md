# first round of project based claude questions
1. User Activity Patterns & Scale: What's your expected concurrent user load during peak exam seasons (e.g., pre-ECAT/MCAT periods)? This will significantly impact our caching strategy and database sharding decisions.
2. Question Bank Evolution: How frequently will the 10,000+ question bank be updated with new content, variations, and ARDE probability adjustments? Will this be real-time or batch operations?
3. Analytics Granularity: For the precision analytics tracking "time-per-question" and attempt patterns, do you need millisecond-level precision, or is second-level granularity sufficient for your learning insights?
4. AI Tutoring Implementation: For the AI-powered follow-up tutoring feature, are you planning to integrate with existing LLM APIs (OpenAI, Anthropic) or build custom ML models? This affects our microservice boundaries.
5. Offline Capability Requirements: Should users be able to continue practicing questions when offline, and if so, what's the acceptable sync delay when they reconnect?
6. Regional Data Residency: Given your primary market is Pakistan with international expansion, do you have any data residency requirements that would affect our Firebase region selection or require multi-region deployment?
7. Content Management Workflow: Will content creators work through a web-based admin panel, or do they need mobile access for question creation and ARDE probability updates?
8. Real-time Features Priority: Which features require real-time updates (leaderboards, group progress, notifications) versus eventual consistency being acceptable?
---
# answers
1. lets plan for a peak user load of 100,000 concurrent users.
2.  Question Bank Evolution will be an ongoing process done on the side by multiple user with content creator  role.They will be done batch-wise with a review and approval workflow.  
3. Millisecond-level precision
4.  No pre-trained custom models, instead we will use OpenAI's API or any of the other models out there like Gemini, Anthropic, Mistral, Grok etc. Whichever is suitable for the job and is supported by our backend infrastructure.
5. As soon as the connectivity is restored.
6. No data residency requirements at all
7. The admin panel is for the admins only. The content creator will have their specific subset of screens within the admin panel for content creation.