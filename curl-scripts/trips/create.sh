#!/bin/bash

curl --include --request POST "http://localhost:4741/trips" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "trip": {
      "destination": "'"${DEST}"'",
      "start_date": "'"${S_DATE}"'",
      "end_date": "'"${E_DATE}"'",
      "name": "'"${NAME}"'"
    }
  }'
