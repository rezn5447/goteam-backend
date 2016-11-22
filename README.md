# GoTeam API Documentation

GoTeam is a decoupled web application that randomly assigns users into teams and allows them to play sports with each other in different locations.

The API implements an REST-like interface. Connections can be made with any HTTP or HTTPS enabled programming language.

## Access and Tokens

The GoTeam API requires an access token for most of the endpoints. The token is given when you connect the login endpoint. Whenever you connect with the endpoints, attached the token at the URL.

Example:

    https://api-goteam.herokuapp.com/api/...&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJkYXRhIjoxfQ.DGPRxN4XhZbJ_A41btq6RgCl5K41qT-60XrI_YMhPoY

## Registration Endpoint

Register a new user.

###Endpoint 

URL:

    http://api-goteam.herokuapp.com/api/users

Method: **Post**

####Request

    {
     "user":{
              "email": string,
              "password": string,
              "first_name": string,
              "last_name": string,
              "street": string,
              "city": string,
              "state": string,
              "zip": string,
              "phone": string
             }
    }

####Response

    {
     "id": integer,
     "email": string,
     "first_name": string,
     "last_name": string,
     "street": string,
     "city": string,
     "state": string,
     "zip": string,
     "phone": string
    }

## Log in Endpoint

Log in a given user.

###Endpoint

URL:

    http://api-goteam.herokuapp.com/api/sessions

Method: **Post**

####Request    

    {
     "email": string,
     "password": string
    }

####Response

    {
     "user":{
              "email": string,
              "password": string,
              "first_name": string,
              "last_name": string,
              "street": string,
              "city": string,
              "state": string,
              "zip": string,
              "phone": string
             },
    "token":string 
    }

## User's statistic Endpoint

Each given user has a statistic in a given sport. You are able to create, update, and show all user's statistic using the following endpoint.

Users will be assigned to different matches according to their rating and division.The "active" column in the statistic will determine whether the user is actively looking for a match in the given sport or not.

###Create

Create a new statistic for a given user with a given sport.

####Endpoint
URL:

    http://api-goteam.herokuapp.com/api/users/{user_id}/stats?token=...

Method: **Post**

####Request

    {"sport_id": integer}

####Response

    {
     "id": integer,
     "user_id": integer,
     "sport_id: integer,
     "rating": integer,
     "division": string,
     "active": string,
     "created_at": string,
     "updated_at": string
    }

###Update

Update the user's rating and active state.

####Endpoint

URL:

    http://api-goteam.herokuapp.com/api/users/{user_id}/stats/{stat_id}?token=...

Method: **PUT**

####Request

    {
     "active": string, (optional)
     "rating": integer (optional)
    }

####Response

    {
     "id": integer,
     "user_id": integer,
     "sport_id: integer,
     "rating": integer,
     "division": string,
     "active": string,
     "created_at": string,
     "updated_at": string
    }

###Index

Show all the statistic of a given user.Return the statistic and the related sport.

####Endpoint

URL:

    http://api-goteam.herokuapp.com/api/users/{user_id}/stats?token=...

Method: **Get**

####Reponse

    {
     "0":[
          {
           "id": integer,
           "user_id": integer,
           "sport_id: integer,
           "rating": integer,
           "division": string,
           "active": string,
           "created_at": string,
           "updated_at": string
          },
          {
           "name": string,
           "total_players: integer,
           "category": string
          }
         ]
     "1": ...
    }

###Find

Find the statistic of a given sport for a given user.

####Endpoint

URL:

    http://api-goteam.herokuapp.com/api/sports/{sport_id}/stats/find?token=...

Method: **Post**

####Request

    {
     "user_id": integer
    }

####Response

    {
     "id": integer,
     "user_id": integer,
     "sport_id: integer,
     "rating": integer,
     "division": string,
     "active": string,
     "created_at": string,
     "updated_at": string
    }

##Sports Endpoint

Show all or a specific sport.

###Index

List all sports available in the API.

####Endpoint

URL:

    http://api-goteam.herokuapp.com/api/sports
   
Method: **Get**

####Response

    [
     {
      "name": string,
      "total_players: integer,
      "category": string
     },
     ...
    ]

###Show

Show a specific sport.

####Endpoint

URL:

    http://api-goteam.herokuapp.com/api/sports/{sport_id}

Method: **Get**

####Response

    {
     "name": string,
     "total_players: integer,
     "category": string
    }   

##Team Endpoint

If there are enough active users in a given sport, the API will create teams and match. Users will be assigned into home team and away team. The match details will be shown also with the location and time.

###Create

Create a team and matches if there are enough users.

####Endpoint

URL

    http://api-goteam.herokuapp.com/api/users/{user_id}/teams?token=...

Method: **Post**

####Request

    {"sport_id": integer}

####Response

    {
     "Home":{
             "id": string,
             "season": string,
             "match_id": integer,
             "sport_id": integer,
             "score": integer,(default to 0)
             "home": "true",
             "updated?": string,(default to false)
             "created_at": string,
             "updated_at": string
             },
     "Home_team":[
                  {
                   "email": string,
                   "password": string,
                   "first_name": string,
                   "last_name": string,
                   "phone": string
                  },
                  ...
                 ],
     "Away":{
             "id": string,
             "season": string,
             "match_id": integer,
             "sport_id": integer,
             "score": integer,(default to 0)
             "home": "false",
             "updated?": string,(default to false)
             "created_at": string,
             "updated_at": string
             },
     "Away_team":[
                  {
                   "email": string,
                   "password": string,
                   "first_name": string,
                   "last_name": string,
                   "phone": string
                  },
                  ...
                 ],
     "match":{
              "id": integer,
              "location": string,
              "date": string,
              "sport_id": integer,
              "created_at": string,
              "updated_at": string
    }

##Match Endpoint

List out all the matches in the database or a given user. Also, users are able to update the match score.

###All

Return all the matches of all sports in the API.

####Endpoint

URL:

    http://api-goteam.herokuapp.com/api/matches/all?token=...

Method: **Get**

####Reponse

    {
     "sport_name":[
                   {
                    "id": integer,
                    "location": string,
                    "date": string,
                    "sport_id": integer,
                    "created_at": string,
                    "updated_at": string
                   },
                   ...
                  ],
                  ...
    }

###Index

Matches of a given user.

####Endpoint

URL:

    http://api-goteam.herokuapp.com/api/users/{user_id}/matches?token=...

Method: **Get**

####Response

    [
     {
      "sport_name":{
                    "id": integer,
                    "location": string,
                    "date": string,
                    "sport_id": integer,
                    "created_at": string,
                    "updated_at": string
                   },
                   ...
     },
     ...
    ]

###Update

Update the score of the match.

####Endpoint

URL:

    http://api-goteam.herokuapp.com/api/users/{user_id}/matches/{match_id}?token=...

Method: **Put**

####Request

    {
     "home_team": integer,
     "away_team": integer
    }

####Response

    {
     "user":{
             "id": integer,
             "user_id": integer,
             "sport_id: integer,
             "rating": integer,
             "division": string,
             "active": string,
             "created_at": string,
             "updated_at": string
            },
     "Home":{
             "id": string,
             "season": string,
             "match_id": integer,
             "sport_id": integer,
             "score": integer,(default to 0)
             "home": "true",
             "updated?": string,(default to false)
             "created_at": string,
             "updated_at": string
             },
     "Home_team":[
                  {
                   "email": string,
                   "password": string,
                   "first_name": string,
                   "last_name": string,
                   "phone": string
                  },
                  ...
                 ],
     "Away":{
             "id": string,
             "season": string,
             "match_id": integer,
             "sport_id": integer,
             "score": integer,(default to 0)
             "home": "false",
             "updated?": string,(default to false)
             "created_at": string,
             "updated_at": string
             },
     "Away_team":[
                  {
                   "email": string,
                   "password": string,
                   "first_name": string,
                   "last_name": string,
                   "phone": string
                  },
                  ...
                 ]
    }