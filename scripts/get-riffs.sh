TOKEN="BAhJIiU2MGZiMGUxNGExMTYyY2VhOTZjNmU4OWMxZmVlOTVkZQY6BkVG--f98e72ee004be66badff4334afb077dd041d49e4"
API="http://localhost:4741"
URL_PATH="/riffs"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
