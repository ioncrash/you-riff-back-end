ID="2"
TOKEN="BAhJIiUyM2VlNzhlOWU4NTFhZDAxMjg3YmYyNTgwNTQyZTc4YgY6BkVG--e5a705dec773cd4b2423f4714f8d97f3e1b782d7"

API="http://localhost:4741"
URL_PATH="/videos"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
