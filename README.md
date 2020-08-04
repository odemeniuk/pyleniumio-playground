# pyleniumio-playground
![pyleniumio-playground](https://github.com/odemeniuk/pyleniumio-playground/workflows/pyleniumio-playground/badge.svg)

This is a Pyleniumio template project to start creating Test Automation from scratch with enabled CI on GitHub Actions.

Pyleniumio is a wrapper of Selenium written in Python and pytest.

Official documentation can be found https://elsnoman.gitbook.io/pylenium/



# Getting Started

Requirements:
python 3.8,
docker

allure service -> https://docs.qameta.io/allure/#_get_started

Instruction to start tests in local environment using Selenium Grid
1. git clone https://github.com/odemeniuk/pyleniumio-playground.git
2. cd pyleniumio-playground
3. pipenv install
4. pipenv shell
5. docker-compose up -d
6. pipenv run pytest tests --alluredir=./allure-results
7. allure serve
8. docker-compose down

Or execute run_tests.sh from the repository

