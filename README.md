# DevOps CI/CD Pipeline Project

## Overview
Automated CI/CD pipeline that builds, tests, and deploys a Node.js app to AWS EC2 using GitHub Actions and Docker.

## Tech Stack
- **App**: Node.js
- **Containerization**: Docker
- **Registry**: AWS ECR
- **Infrastructure**: AWS EC2, VPC (Terraform)
- **CI/CD**: GitHub Actions

## Architecture
GitHub Push → GitHub Actions → Run Tests → Build Docker Image → Push to ECR → Deploy to EC2

## Infrastructure Setup
```bash
cd terraform
terraform init
terraform apply
```

## CI/CD Pipeline
Every push to `main` automatically:
1. Runs tests
2. Builds Docker image
3. Pushes to AWS ECR
4. Deploys to EC2

## Local Development
```bash
cd app
npm install
npm test
npm start
```
