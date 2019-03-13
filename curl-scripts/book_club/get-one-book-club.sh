#!/bin/bash

curl "http://localhost:4741/book_clubs/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo
