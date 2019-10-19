## django-rest-framework-boilerplate
Simple boilerplate for django & django rest framework

[![Build Status](https://travis-ci.org/p8ul/stackoverflow-lite-client.svg?branch=develop)](https://travis-ci.org/p8ul/stackoverflow-lite-client)
[![Coverage Status](https://coveralls.io/repos/github/p8ul/django-rest-framework-boilerplate/badge.svg?branch=master)](https://coveralls.io/github/p8ul/django-rest-framework-boilerplate?branch=master)
[![Maintainability](https://api.codeclimate.com/v1/badges/e066442f75f4bc3f5269/maintainability)](https://codeclimate.com/github/p8ul/django-rest-framework-boilerplate/maintainability)

### Tasks list
- [x] Users api CRUD endpoints
- [x] DRF JWT Authentication
- [x] Add docker configurations
- [ ] Document folder structure
- [ ] Configure Static/media & templates
- [ ] Integrate material ui & react js on templates
 
#### Jwt token endpoint
Method | Endpoint | Functionanlity
--- | --- | ---
POST | `/api-token-auth` | Request jwt token

#### User Endpoints

Method | Endpoint | Functionality
--- | --- | ---

POST | `/api` | user list

GET | `list_detailsview/<int:pk>/` | Retrieve a user

POST | `list_detailsview/new` | Add a user

DELETE | `list_detailsview/<int:pk>/` | Delete a user


### Installation 
If you wish to run your own build, you two options
 1. User Docker compose.
    
 
    
    `$ cd django-rest-framework-boilerplate`    
    `$ docker-compose up`
 
 2. Without docker
 
First ensure you have python globally installed in your computer. If not, you can get python [here](python.org).

After doing this, confirm that you have installed virtualenv globally as well. If not, run this:

    $ pip install virtualenv
Then, Git clone this repo to your PC

    $ git clone https://github.com/p8ul/django-rest-framework-boilerplate
    $ cd django-rest-framework-boilerplate
Create a virtual environment

    $ virtualenv .venv && source .venv/bin/activate
Install dependancies

    $ pip install -r requirements.txt
Make migrations & migrate

    $ python manage.py makemigrations && python manage.py migrate
Create Super user
    
    $ python manage.py createsuperuser

### Launching the app
    $ python manage.py runserver

### Run Tests
    $ python manage.py test

### Problem Solving Instruction

  First of all declared a function, and user input option that, how much he/she want to run this program for different input.

  I declared a string 'adam' instaded of 'madam' and there is an user input option if user input 'm' then it will be 'madam' that is palindrome
  but if user input another then it will show not palindrome

  ### Populatedata.py 
  you can insert data on database by using this file
  if you run this python file then it will generate 100's of dumy data on database