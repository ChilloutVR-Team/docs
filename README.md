!["ABI Logo Short"](https://docs.abinteractive.net/assets/images/abi-small-white.png)

# Documentation

This repository contains the source files for the Alpha Blend Interactive Documentation available under [docs.abinteractive.net](https://docs.abinteractive.net/)

## How to Contribute

### Branches

- master is our production branch, means anything in master goes/is in the production site at [docs.abinteractive.net](https://docs.abinteractive.net/)
- develop is our main development branch, merge and base your changes to/from here

### External Contributors

Please contribute using [GitHub Flow](https://guides.github.com/introduction/flow). Create a fork, add commits, and [open a pull request](https://github.com/ChilloutVR-Team/docs/compare).

For guidance writing new documents for CCK components, please follow our [style guide](https://github.com/ChilloutVR-Team/docs/blob/master/CONTRIBUTING.md).

### ABI employee's / ABI internal contributors

For any changes, make a feature branch.
This means a branch named like `feature/add-cvravatar-feature-docs` with a reasonable short name of the changes you are doing there.
When you are done with your changes, merge them into develop.

### Releases
Release are made by ABI staff.

Additional notes:
For deploying to production merge develop into master, and grab the latest build artifact from teamcity after it has been built.

## Checking Your Work

We recommend previewing the site before submitting your PR.  To preview the site, follow the instructions below:

### Install python, dependencies and mkdocs

#### Windows

1. Install [CPython](https://python.org)
2. Open a Terminal (cmd or powershell) in the docs folder
3. Run `.\setup.bat`

#### Linux

1. Install python3
2. Create a python venv & activate it
3. `pip install -U poetry`
4. `poetry install --no-root`


### Run local development server

To run a local development server now, just run `.\serve.bat`
or `mkdocs serve` if your directly within your venv

You now have a development server running at [http://127.0.0.1:8000/](http://127.0.0.1:8000/)
