# Great Zimbabwe: A housing market Analysis project

Welcome to **Great Zimbabwe**, We're ("I" for now) am not sure what we are trying to achieve with this project.
Maybe a vision to provide a platform that allows users to be more informed about the UK housing market (using data publicly available).
There are plenty of these kind of projects out there. The data is not the best, but we'll do our best.

> ##### Why this name ?
> [**Great Zimbabwe**](https://www.britannica.com/place/Great-Zimbabwe) We initially wanted to name my repositories after
> james bond missions.
> We quickly decided to pivot from this and use african tourist attractions.
> In shona Great Zimbabwe is called "Dzimba dza mabwe" which means "Houses of Stone".
> We thought this was a fitting name for a project that is about houses.

### Phases of the project

- **Data Structuring and Modeling:** Our process begins with data engineering to ensure all incoming data is correctly
- formatted, creating a solid foundation for subsequent analysis.
- **Data Analysis:** We will delve into the UK housing market to uncover essential insights. We will keep things simple
- and focus on the most important aspects of the data.
- **Data Science:** We will develop additional features that enhance our machine learning models.

### Sharing the project

The hardest part of this project is sharing the results. This is still a work in progress.


### Data Sources

#### Land Registry
- **Land Registry Price Paid Data**: This dataset provides a comprehensive record of residential property sales in
England and Wales that have been registered at HM Land Registry.
- **House Price Index (HPI)**: The HPI offers a detailed view of the price changes of residential properties over time.

#### Doogal
- **Postcode Data**: Utilised for its exhaustive coverage of UK postcode metadata. I really look up to this website.

## Architecture

All components of this project will use Infrastructure As Code (IaaC). This will either be in the form of
Terraform/Python SDK. We thought of building a local data stack but in the long term this would be useless.

## Installation

## Set up pyenv

```bash
pyenv install 3.11.1
pyenv local 3.11.1
pyenv shell 3.11.1
```

## Development

> The package is managed via [poetry](https://python-poetry.org/), thus many `Makefile` commands will be calling `poetry` commands under the hood.

To install both the package and the development dependencies, first clone the package via `git clone` the run `make install`.
The latter command will also set up the pre-commit hooks specified in `.pre-commit-config.yaml`.
These will run on the files changed in each commit, preventing the commit from succeeding if any of the hooks fail.

- To run the pre-commit hooks on *all* files, use `make pre-commit`.
- Unit tests can be run via `make test` (using `pytest`).
