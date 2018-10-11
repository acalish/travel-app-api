# Go There, Do This!

Go There, Do This! is a travel app that allows authenticated users to log trips.  In the future it will be built out to save more information like activities, restaurants, and general recommendations about locations.

## Test out the app!

To try out the app for yourself, go to the deployed
url: https://acalish.github.io/travel-app-client/

Use the following demo credentials
**Username:** demo@demo
**Password:** demo

## Planning and Development Process

My primary focus was to design a simple minimum viable product, and leave a lot of space to grow the app after my initial project sprint deadline.  With only four days, I had to scale down my vision, and then build out future iterations for myself when I have more time.  My current project has two resources, users and trips.  A user has many trips, and a trip belongs to a user.

I began by making sure that I could perform CRUD actions on each resource through curl scripts, and then added the relationship between them.  Once I set up the relationship I again tested through curl that CRUD could still happen.  I also set up my app so that users can only see their own resources.

#### User Stories
As a user I want to sign up, sign in, change my password, sign out.
As a registered user I want to create a new trip that has a destination, start and end dates, and a title (think Amanda’s Wedding or College Reunion).
As a registered user I want to edit my trip.
As a registered user I want to delete my trip.
As a registered user I want to see all of my trips.


#### Entity Relationship Diagrams
[ERD](https://imgur.com/a/eBDXsdw)



### Future Goals
I would like Go There, Do This! to build out into a more robust site in the future.  I want each trip listing to have additional information linked to it, like restaurant and activity recommendations, and maybe lodging and transportation information.  I would also like to incorporate the Yelp API or another travel site to provide more information.  It would also be nice if users could share their trip listings with friends.  I am excited to have so many options of how to expand this app in the future.

I will add more tables and relationships, so trips will have many restaurants, activities, etc.  I would also like to build in a third party API to my backend, and maybe put in a search feature for users to look up information on sites like TripAdvisor or Yelp.

### Challenges
My main challenge for this project was my front end, as it was built with a new framework to me.  I just had to make sure I was not being overly confident working with Ruby on Rails, and make sure to check everything after scaffolding a resource and adding new relationships.

## Set up on localhost
- Fork and clone
- Install dependencies with `bundle install`
- Create a `.env` for sensitive settings (`touch .env`).
- Generate new `development` and `test` secrets (`bundle exec rails secret`).
- Store them in `.env` with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>` respectively.

### Setup database
- bin/rails db:create
- bin/rails db:migrate
- Run the API server with `bin/rails server` or `bundle exec rails server`.


## Routes Catalog

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password`     | `users#changepw`  |
| DELETE | `/sign-out`            | `users#signout`   |


### Trips

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| POST  | `/trips`      | `trips#create`  |
| GET	  | `/trips`      | `trips#index`   |
| PATCH | `/trips/:id`  | `trips#update`  |
| DELETE | `/trips/:id` | `trips#destroy` |

All trips CRUD requests must include a header "Authorization: Token token=${TOKEN}".


## Links

* [Back-end repo](https://github.com/acalish/travel-app-api)
* [Front-end repo](https://github.com/acalish/travel-app-client)
* [Heroku deployment](https://floating-chamber-13025.herokuapp.com/)
* [Front-end deployed](https://acalish.github.io/travel-app-client/)

## Built With

* [React](https://reactjs.org/) - The web framework used
* [NPM](https://www.npmjs.com/) - Dependency Management
* [Ruby on Rails](https://rubyonrails.org/) - Back-end database
* [Bootstrap/CSS/Sass](getbootstrap.com/) - Styling
* [JavaScript](https://www.javascript.com/) - Programming Language
