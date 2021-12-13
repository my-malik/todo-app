#!/bin/bash
# environment variables
export DATABASE_URI 
# install apt dependencies
sudo apt update
sudo apt install python3 python3-venv python3-pip -y
# create and activate venv
python3 -m venv venv
source venv/bin/activate
# install pip requirements
pip3 install -r requirements.txt
# run tests
python3 -m pytest --cov=application --cov-report term-missing --cov-report xml:coverage.xml --junitxml=junit_report.xml