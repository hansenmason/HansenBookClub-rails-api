#!/bin/bash

curl "http://localhost:4741/book_clubs/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "book_club": {
      "name": "'"${NAME}"'"
    }
  }'

echo
