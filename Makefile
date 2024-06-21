.PHONY: help, install, pre-commit, test
.DEFAULT_GOAL := help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install:  ## Install dependencies for the package for development
	poetry install
	poetry run pre-commit install

test:  ## Run the unit tests
	poetry run pytest -vv

pre-commit:  ## Run the pre-commit hooks
	poetry run pre-commit run --all-files
