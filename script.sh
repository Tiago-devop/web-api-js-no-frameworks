#!/bin/bash
printf '\n\n requesting all heroes'
curl localhost:3000/heroes

printf '\n\n requesting flash'
curl localhost:3000/heroes/1

printf '\n\n requesting with wrong body'
curl --silent -X POST \
    --data-binary '{"invalid": "data"}' \
    localhost:3000/heroes

printf '\n\n creating Leoric'
CREATE=$(curl --silent -X POST \
    --data-binary '{"name": "Leoric", "age": 2000, "power": "Cleave Attack"}' \
    localhost:3000/heroes)

echo "$CREATE"

ID=$(echo "$CREATE" | jq .id)

# caso de erro na requisição com o nodemon 
# execute: node webapi/src/index.js
# e tente novamente.
printf '\n\n requesting leoric'
curl localhost:3000/heroes/"$ID"