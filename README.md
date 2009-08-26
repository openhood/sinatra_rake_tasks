sinatra_rake_tasks
==================

Basic Usage
-----------

Copy/Paste the following lines in your Rakefile :

    require 'sinatra_rake_tasks'
    OpenHood::Rake::SpecTask.new
    OpenHood::Rake::CucumberTask.new
    OpenHood::Rake::SequelTask.new
    OpenHood::Rake::CITask.new
    OpenHood::Rake::ConsoleTask.new

Add basic directories :

    # For SequelTask and ConsoleTask :
    mkdir config
    mkdir migrations

    # For SpecTask :
    mkdir spec

    # For CucumberTask :
    mkdir features

And you get :

    rake -T
    
    rake ci:all           # Run all features and specs
    rake console          # Pseudo console
    rake db:migrate       # Migrate the database through scripts in db/migrate.
    rake db:migrate:redo  # Rollbacks the database one migration and re migrate up.
    rake db:rollback      # Rolls the schema back to the previous version.
    rake db:version       # Retrieves the current schema version number
    rake features         # Run Cucumber features
    rake spec             # Run specs

Copyright
---------

Copyright (c) 2009 Joseph Halter & Jonathan Tron. See LICENSE for details.
