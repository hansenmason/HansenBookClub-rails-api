#!/bin/bash

curl "http://localhost:4741/book_clubs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "book_club": {
      "name": "'"${NAME}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
