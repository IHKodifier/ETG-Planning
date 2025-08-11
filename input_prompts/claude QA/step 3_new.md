# questions
1. ARDE Data Integration: How do you plan to collect and maintain the "actual exam appearance probability" data for questions? Do you have partnerships with exam boards, historical data sources, or will this be crowd-sourced from users?
2. AI Tutoring Context: When users engage in follow-up conversations with the AI tutoring system, should the AI remember previous questions they've asked about, or should each explanation conversation be isolated to that specific question?
3. Device Fingerprinting Precision: For the 3-device limit, what's your tolerance for false positives? Should the system err on the side of being strict (potentially blocking legitimate users) or lenient (potentially allowing some circumvention)?
4. Social Features Privacy: In study groups and leaderboards, what level of performance data should be visible to other users by default? Should users be able to opt-out of comparative analytics while still participating in groups?
5. Offline Capability Scope: Which specific features need to work offline? Should users be able to take sprint exams offline, or just practice individual questions?
6. Question Variation Algorithm: How should the system decide when to show a user a variation of a question they've already seen versus a completely new question?
7. Analytics Data Retention: How long should detailed performance analytics (millisecond timing data) be retained? Should there be different retention periods for different user tiers?
8. Subscription Tier Transitions: When a user downgrades from paid to free, how should the system handle their existing data (bookmarks, analytics, etc.) and previously accessed premium content?
---
## here are your answers
1. all of the partnerships with exam boards, historical data sources, or will this be crowd-sourced from users
2. it wld be nice to have  the AI remember previous questions they've asked about, but if it approaches on the context limit of the models, let each explanation conversation be isolated to that specific question
3. lenient
4. No, users should not  be able to opt-out of comparative analytics while still participating in groups unless the exit the group . guide me on the level of performance data that should be visible 
##### 6. features available offline include ...
- Practice MCQs. no new questions shall be available to the users except the ones shown to him previously during practice MCQs/SEs/SREs
- SEs/SREs are not available offline since Question bank is conyonously updated in real time and newly published questions/question variations  may need to be pushed to the usewr during their  SE/SRE so the user needs to remain connected. and hence limited offline features. User needs to be gracefully educated at the time of beginning of SE/SRE that he needs to remain connected all the time till the end of SRE.User needs to be gracefully warned at the beginning of SRE, that he needs to remain connected till the end of the exam.
7. This exam's  selection selection algorithm (QSA) needs  comprehensive thinking and working. Let's keep it for later. Keep it marked and keep flagging it to me. . Give me any suggestions if you have.
8. In case of a downgrade, data is retained and becomes available as soon as the user upgrades once again. Only the features are curtailed for the user.Users get a 14-day grace period after they have expired their monthly subscription to pay and continue as paid users. . They continue to enjoy features as a paid user until 14 days within which they need to make a payment. After those 14 days, the features are cut down and they only use the free features.