---
name: Data Service
---

# Team Spiral Racing Data Service
The TSR Data Service is a serverless application that collects data from various sources. It is kicked off from a [cron-job.org](https://cron-job.org/en/). Authentication is done via a Bearer token.

## Code Setup
The source code is hosted on [GitHub](https://github.com/Team-Spiral-Racing/data-service) under the Team Spiral Racing [GitHub org](https://github.com/Team-Spiral-Racing).

## Deployment
Hosting is done by [Vercel](https://vercel.com/). Although CRON jobs are offered, they are extremely limited. Instead, CRON jobs are kicked off by REST API request from the aforementioned [cron-job.org](https://cron-job.org/en/). In cron-job.org, a POST method is sent at 12:15 AM, 6:15 AM, 12:15 PM, 6:15 PM to scan for new events in the past 6 hours. Each REST request contains a Bearer token which the application will cross check with `CRON_SECRET` to ensure that no other person is calling the API. The reason why there is a 15 minute boundry is due to Vercel recieving many requests from cron-job.org in peak hours causing denials.

## Containerization
A Docker image is built every single time a release is pushed. Pushing releases will kick off the application and update the changelog.
