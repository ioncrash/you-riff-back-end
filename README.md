Welcome You-Riff's back-end!

A link to the deployed back-end: https://quiet-lowlands-87275.herokuapp.com/
A link to the front-end repo: https://github.com/ioncrash/you-riff

# DESCRIPTION #

You-Riff is a place where YouTube becomes more social and more informative. One of our favorite experiences is watching a film with a group of friends, sharing thoughts or cracking jokes at what's going on on the screen.

The backend holds 3 resources: users, riffs, and videos. Riffs serves both as a join table between users and videos, and as a place to hold the content of the riffs (text and timestamp). Videos is primarily a reference to YouTube's API, but having it here allows easier routing on the front end.

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
