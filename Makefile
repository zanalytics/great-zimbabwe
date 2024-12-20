.PHONY: help, install, pre-commit, test, check-tables, refresh-database
.DEFAULT_GOAL := help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install:  ## Install dependencies for the package for development
	uv sync
	uv run pre-commit install

test:  ## Run the unit tests
	uv run pytest -vv -p no:warnings

pre-commit:  ## Run the pre-commit hooks
	uv run pre-commit run --all-files
