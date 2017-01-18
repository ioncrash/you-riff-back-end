EMAIL="herp@derp.com"
PASSWORD="herp"
EMAILA="beep@thing.com"
PASSWORDA="beep"

API="https://quiet-lowlands-87275.herokuapp.com"
URL_PATH="/sign-up"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
