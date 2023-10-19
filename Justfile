set dotenv-load

setup:
  pipenv install --dev

local-run:
  pipenv run python -m uvicorn src.main:app --reload

shell: setup
  pipenv shell

lint:
  pipenv run black ./
  pipenv run ruff check --fix --show-fixes .
  pipenv run mypy ./
  pipenv check
