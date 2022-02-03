# Udagram Pipeline

Udargram integrates with `CircleCi Version 2.1` to automate install, build, deploy the application.
Pipeline exists on `.circleci/config.yml` file.

## Orbs

Udagram requires 3 orbs to run workflow and jobs

```
  node: circleci/node@4.1.0
  aws-cli: circleci/aws-cli@1.3.1
  eb: circleci/aws-elastic-beanstalk@1.0.0
```

## Jobs

Udagram have build job to fully automate the application
Consists of 11 steps:

- Install Node 16.13
- Check Node Version
- Checkout code
- Setup AWS CLI
- Setup EB CLI
- Install Frontend Dependencies
- Build Frontend
- Install Backend Dependencies
- Build Backend Dependencies
- Deploy Frontend Application
- Deploy Backend Application

## Scripts

Udegram pipeline uses the following scripts to install, build and deploy the full stack application

Scripts are defined in `package.json` file in the root folder

```json
    "frontend:install": "cd udagram-frontend && npm install",
    "frontend:build": "cd udagram-frontend && npm run build",
    "frontend:deploy": "cd udagram-frontend && npm run deploy",
    "backend:install": "cd udagram-api && npm install",
    "backend:build": "cd udagram-api && npm run build",
    "backend:deploy": "cd udagram-api && npm run deploy"
```
