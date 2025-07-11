---
name: Documentation Website (Internal)
index: 4
---

# Team Spiral Racing Documentation Website
The Team Spiral Racing Documentation Website is a website for holding all of the internal facing documentation. It is not to be confused for the [Documents Website](/technical-systems/documents-web)

## Code Setup
The source code is hosted on [GitHub](https://github.com/Team-Spiral-Racing/docs) under the Team Spiral Racing [GitHub org](https://github.com/Team-Spiral-Racing).

## Deployment
Hosting is done by GitHub pages being deployed off of the `gh-pages` branch. There is a custom build step that uses `npx hyperbook build` to compile the Markdown files into a static HTML/CSS website. `CNAME` is directly injected during the build step.

## Containerization
A Docker image is built every single time a release is pushed. Pushing releases will kick off the application and update the changelog.
