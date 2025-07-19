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

### CVR employee's / CVR internal contributors

For any changes, make a feature branch.
This means a branch named like `feature/add-cvravatar-feature-docs` with a reasonable short name of the changes you are doing there.
When you are done with your changes, merge them into develop.

### Releases
Release are made by CVR staff.

Additional notes:
For deploying to production merge develop into master, and grab the latest build artifact from teamcity after it has been built.

## Checking Your Work

We recommend previewing the site before submitting your PR.  To preview the site, follow the instructions below:

### Install python, poetry, and project dependencies

#### Windows

**Automatic:**

1. Right-click the file `setup.ps1` and pick `Run with PowerShell`
2. Look at the console to see if there were errors, if not, we're good :)

---

**Manual:**

1. Install [Python](https://www.python.org/) `3.11`
2. Install [Poetry](https://python-poetry.org/docs/#installing-with-the-official-installer)
3. Install/Update the project packages by opening a Terminal in the repository's root folder, and running:
   `poetry install --no-root`

#### Linux

1. Install python 3.11
2. Install [Poetry](https://python-poetry.org/docs/#installing-with-the-official-installer)
3. Run `poetry install --no-root` to install/update the packages

### Run local development server

**Windows**

1. Run the [Windows Setup](#windows)
2. Right-click the file `serve.ps1` and pick `Run with PowerShell`

**Linux**

1. Run the [Linux Setup](#linux)
2. Run `poetry run mkdocs serve` on a Terminal in the project's root

You now have a development server running at [http://127.0.0.1:8000/](http://127.0.0.1:8000/)
