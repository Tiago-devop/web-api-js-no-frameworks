echo '\n\n requesting all heroes'
curl localhost:3000/heroes

echo '\n\n requesting flash'
curl localhost:3000/heroes/1

echo '\n\n requesting with wrong body'
curl --silent -X POST \
    --data-binary '{"invalid": "data"}' \
    localhost:3000/heroes

echo '\n\n creating Leoric'
curl --silent -X POST \
    --data-binary '{"name": "Leoric", "age": 2000, "power": "Cleave Attack"}' \
    localhost:3000/heroes