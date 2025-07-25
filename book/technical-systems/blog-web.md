---
name: Blog Website
---

# Team Spiral Racing Blog Website
The Team Spiral Racing Blog Website serves as a front end to all of the articles stored in MongoDB.

## Code Setup
The source code is hosted on [GitHub](https://github.com/Team-Spiral-Racing/blog) under the Team Spiral Racing [GitHub org](https://github.com/Team-Spiral-Racing).

## Deployment
Hosting is done by GitHub pages being deployed off of the `gh-pages` branch. There is a custom build step that uses "Hugo" to compile the Markdown files into a static HTML/CSS website. `CNAME` is directly injected during the build step. 

### Application
The application looks complicated but is quite simple. Effectively you only need to pay attention to the following directories:
- `/content/posts`: This is where all of the blogs are posted.
- `/assets`: Non dynamic image file store.
- `/config/_default`: How you configure the themes and website.

This website is built via Hugo using the Blowfish theme. Blog files are published via the Team Spiral Racing Website and CMS is managed by the TSR Data Service

## Containerization
A Docker image is built every single time a release is pushed. Pushing releases will kick off the application and update the changelog.
