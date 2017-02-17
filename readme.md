# Liquid Sample App

### Requirements
- Rails app with user authentication via devise
	- email addresses must be unique
- Logged in users have partial CRUD access
	- Index all users
		- Users can have only 1 favorite game
		- Users can edit their favorite game and name
		- New users do not have a favorite game by default
		- New users do not have a name by default
- Basic chart on index displays # user sign ups per date
- Chart must skip days that no users signed up

### Tech Used
- Ruby 2.2.3
- Rails 4.2.4
- PSQL
- Bootstrap
- Devise
- Chart.js
- Heroku

#### Features and Bonus Implementations
- Full authentication with flash messaging
- Robust passwords
	- pw must be within 8-40 characters
	- pw must contain at least 20-7E ascii value
	- pw must contain at least 1 upper case letter
	- pw must contain at least 1 lower case letter
	- pw must contain at least 1 digit
- Backend chart functionality adheres to Separation of concerns, housed within helper module
- Separate namespaced v1 API for Chart routing
- Front end chart rendered via ChartJS library
- Full CRUD access for Game resource for logged in user
- Turbolinks disabled to ensure consistent document ready events across navigational cases.
- Seed file
- Deployed on Heroku
- Basic bootstrap styling


