#!/bin/bash

curl "http://localhost:4741/book_clubs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "book_club": {
      "name": "'"${NAME}"'",
      "booklist": "'"${BOOKLIST}"'"
    }
  }'

echo
