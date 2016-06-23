# RailsGirlsNL
Hello and welcome to the RailsGirlsNL project repository!

The RailsGirlsNL project has been started as a project for alumni of Dutch RailsGirls events to work on, get more experience with programming, and have a project to focus their learning on.
The project is meant to be the platform for RailsGirls to find resources, connect to one another, share code and much more.
Any ideas for making the website even more useful for RailsGirls are very welcome!

How to contribute to RailsGirlsNL

 - submitting an issue; submit and track your issues to the issues section within this project repository or contact us.
 - contributing to the project; feel free to fork the project and send pull requests. In your pull request, please reference the issue you are contributing to.

Development installation:

 - Use Ruby 1.9 and install your preferred version of bundler and rails
 - (fork and) Clone or zip this project to your local development machine.
 - Run

        bundle install --without production
(production has some big gems that are not necessary in development)

 - To be able to save database data somewhere a `database.yml` is needed to tell the application where it can find the database and how this should be accessed. This repository comes with an example `database.yml` which uses sqlite3 (a simple file-based database). More info on sqlite3 can be found [here][1]. Copy or rename the `database.yml.example` in the `config` folder or while in the project path in your favorite Linux or Mac terminal run the command below.

        cp config/database.yml.example config/database.yml
this will make a copy of the file with the name database.yml
 - Now that the database can be accessed it's time to create it and get it ready for our first run. Run the command below to create the database and populate it with the right tables.

        bundle exec rake db:setup

 - Now let's boot the server. Type the command below and check 'localhost:3000' in your favorite browser.

        `bin/rails server`

  - To run the tests; for Cucumber and Rspec: `bin/rake`. For minitest: `bin/rake test`

Good luck!
Happy committing! And may the merges be ever in your favor

  [1]: http://zetcode.com/db/sqlite/introduction/
