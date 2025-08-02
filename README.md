# job-tracker-repo

This repository contains the setup for a fully serverless Job Application Tracker web app. Built using Nuxt 3 (Vue.js + TypeScript), Python AWS Lambdas, and GitHub Actions, it is designed for automated job tracking, interview reminders, and daily coding practice — all integrated into a clean dashboard UI and optimized for AWS free-tier hosting.

Here's an overview of the setup:

- Set up the frontend dashboard with Nuxt 3 + TypeScript
- Build backend logic using AWS Lambda (Python)
- Prepare the application structure for serverless deployment
- Connect to Gmail API to parse job application emails
- Store application data in JSON or DynamoDB
- Generate daily Python/DevOps tasks from static files
- Set up GitHub Actions CI for automated testing and deployment

---

## Step 1: Set Up Your Project Environment

1. Project Structure (already included):


---

## Step 2: Frontend Structure (Nuxt 3)

- Use Nuxt 3 with TypeScript and TailwindCSS
- Organize job cards, analytics, and reminders inside `pages/index.vue`
- Include daily task logic via static JSON

Example command (for local dev):

```bash
cd frontend
npm install
npm run dev

Step 3: Gmail Integration (via Lambda)
Backend Gmail parser located in backend/lambda/gmail_parser.py

Connects using OAuth2 to Gmail API

Parses emails with keywords: applied, interview, exam


Step 4: AWS Lambda for Job Tracking
tracker_api.py: Handles GET/POST for application entries

task_suggester.py: Picks a daily learning task from shared/daily_tasks.json

All Lambda functions are deploy-ready via Terraform.

Step 5: Sample Command Flow

# Initialize infrastructure (Terraform)
terraform init
terraform apply

# Upload static task list
aws s3 cp shared/daily_tasks.json s3://job-tracker-task-bucket/daily_tasks.json

# Test Lambda locally
python backend/lambda/gmail_parser.py
