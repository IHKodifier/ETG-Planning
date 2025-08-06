# GENERIC FLUTTER TECH STACK 
for SaaS apps



* The frontend will be built in Flutter with a Micro-services architecture.
* **AWS** infrastructure will power the backend.
* The backend will be built in **Python** using **FastAPI**
* **AWS API Gateway** will host API endpoints
* the entire app  backend e.g. database etc would reside inside **AWS Virtual Private Cloud (VPC)**
* The database will be **Postgres**, hosted through **AWS**
* The authentication will use **AWS Cognito**.
* front-end will only and only talk to API endpoints for the app
* Use **SQLAlchemy** as an ORM with Alembic for migrations.
* Recommend me a deployment solution for the backend
* I’d like to develop locally with a **Docker container**
* I will use **Posthog/Google Analytics**  For analytics in my application
* I will use **Stripe** for payments in my application
* subscriptions will be managed by **paddle.com**