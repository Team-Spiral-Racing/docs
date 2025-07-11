<img src="/public/logos/full.png" alt="team spiral racing logo" width="400"/>
<a href="https://github.com/Team-Spiral-Racing/docs/releases"><img src="https://img.shields.io/github/v/release/Team-Spiral-Racing/docs?color=f56827"></a>
<a href="https://github.com/Team-Spiral-Racing/docs/blob/main/LICENSE"><img src="https://img.shields.io/github/license/Team-Spiral-Racing/docs"></a>

# Team Spiral Racing Documentation
This repository contains internal documentation for managing [Team Spiral Racing](https://www.teamspiralracing.com/). This website is built via [Hyperbook](https://hyperbook.openpatch.org/) and being maintained by members of Team Spiral Racing.

## Running Locally
The easiest way to run this locally is by downloading the VSCode extension and writing documentation from there. Consult the "[Getting Started](https://hyperbook.openpatch.org/#getting-started)" section of the Hyperbook docs to learn more.

## Deployment Strategy
Currently the website is build via a GitHub action and deployed to the `gh-pages` branch where it is served. The `CNAME` is hard coded and directly injected during the build process.

However, an alternative exists in the form of a Docker image. These [images](https://github.com/orgs/Team-Spiral-Racing/packages?repo_name=docs) are built upon [releases](https://github.com/Team-Spiral-Racing/docs/releases). Releases are kicked off by pushing tags and can be done by running the following commands:
```
git tag v*.*.*
git push origin tag v*.*.*
```

## License
This project is licensed under the Creative Commons BY-NC 4.0 License. See `LICENSE` for more information.