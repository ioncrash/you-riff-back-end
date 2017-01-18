A readme for Bucket-list back-end!

A link to the deployed back-end: https://quiet-lowlands-87275.herokuapp.com/
A link to the front-end repo: https://github.com/ioncrash/you-riff-back-end

# DESCRIPTION #

Bucket list is an app for storing your travel goals across the world. The back end uses MongoDB and a simple one-to-many relationship between users and their goals.

# ROUTES AND PATHS #

| Verb            | URI Pattern   | Controller#Action  |
| :----: |:-------------:| :-----:            |
| POST   | /sign-up      | users#signup      |
| POST        | /sign-in      |   users#signin              |
| DELETE | /sign-out/:id   |   users#signout|
| PATCH   | /change-password     | users#changepw      |
| GET        | /videos      |   videos#index             |
| GET | /videos/:id  |   videos#show|
| POST   | /videos    | videos#create    |
| PATCH        | /videos/:id      |   videos#update             |
| DELETE | /videos/:id  |   videos#destroy|
| GET        | /riffs      |   riffs#index             |
| GET | /riffs/:id  |   riffs#show|
| POST   | /riffs    | riffs#create    |
| PATCH        | /riffs/:id      |   riffs#update             |
| DELETE | /riffs/:id  |   riffs#destroy|
