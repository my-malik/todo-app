#!/bin/bash

source venv/bin/activate

# run tests
python3 -m pytest --cov=application --cov-report term-missing --cov-report xml:coverage.xml --junitxml=junit_report.xml