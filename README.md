Bandtracker
================

by Kameron Johnson

Bandtracker is a website that uses a database and Sinatra to allow users to input bands and venues, and checks which venue(s) a particular band has played.

Installation
------------

Install Train System by first cloning the repository.  
```
$ git clone http://github.com/kameronjohnson/hair_salon.git
```

Install all of the required gems:
```
$ bundle install
```

Start the database:
```
$ postgres
```

Create the databases and tables:
```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

Start the webserver with Sinatra:
```
$ ruby app.rb
```

In your web browser, go to http://localhost:4567

Have Fun!

License
-------

GNU GPL v2. Copyright 2015 Kameron Johnson
