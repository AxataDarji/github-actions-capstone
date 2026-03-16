#!/bin/bash

echo "Starting test..."

node app/index.js &

sleep 3

curl -f http://localhost:3000/health

if [ $? -eq 0 ]; then
  echo "Tests Passed"
  exit 0
else
  echo "Tests Failed"
  exit 1
fi