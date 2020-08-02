#!/usr/bin/env bash
echo "-> Installing dependencies"
pipenv install
#pipenv shell

echo "-> Removing old Allure results"
#rm -r allure-report
rm -r allure-results/ || echo "No results"

echo "-> Starting Selenium Grid Containers"
docker-compose up -d
echo "-> Containers running"

echo "-> Starting tests"
pipenv run pytest tests --alluredir allure-results
echo "-> Test finished"

echo "-> Generating report"
allure serve
#allure generate allure-results --clean -o allure-report
echo "-> Execute 'allure serve' in the command line"

echo "-> Stopping Selenium Grid Containers"
docker-compose up -d
echo "-> Containers stopped"