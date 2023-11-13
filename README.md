## Readme
Name: Zhe Pang
UNI: zp2249  

Name: Jesse Chong
UNI: JLC2332  

Name: Jun Lin
UNI: jal2330  

Name: Run Guo
UNI: rg3551  

## How To Setup and Run This App Locally
1. git clone this app somewhere locally `git clone git@github.com:ZhePang/ArtTalkAI.git`
2. Change into the ArtTalkAI directory `cd ArtTalkAI`.
3. Run this command to get local dependencies installed: `bundle install --without production`
4. To setup the DB, we are using PostGreSQL for heroku deployment. We need to set this up locally.
5. install postgresql/psql locally. More info here: https://devcenter.heroku.com/articles/local-setup-heroku-postgres
6. Run this command `sudo -u postgres psql`. in the command line it should say `postgres=#` which means your within the postgres interface.
7. Run all of these commands to set it up.
  - `CREATE DATABASE app_devo1;`
  - `CREATE DATABASE app_test1;`
  - `CREATE DATABASE app_prod1;`
  - `CREATE USER username WITH PASSWORD 'password';`
  - `ALTER ROLE username WITH SUPERUSER;`
  - `GRANT ALL PRIVILEGES ON DATABASE app_devo1 TO username;`
  - `GRANT ALL PRIVILEGES ON DATABASE app_test1 TO username;`
  - `GRANT ALL PRIVILEGES ON DATABASE app_prod1 TO username;`
  - `EXIT`
4. Now run these commands to setup the DB: `rake db:migrate`. Then: `rake db:seed`.
5. Now, run `rails server`. On your browser, go to `localhost:3000` to view the page!
6. If you are seeing an error regarding a database not existing, or DB art objects not being present, then try to recreate the DB again with these commands:
  - `rake db:drop` --> `rake db:create` --> `rake db:migrate` --> `rake db:seed`. Now try `rails server` again the page should load now.

## How to test art piece a day feature
1. ArtTalkAI depends on the system time to show the art of the day.
2. So, if you want to see the behavior for what art piece is shown per day you need to change your computer system time to a different day.
3. After that refresh the page and you should see a different art-of-the-day!

## How To Add More Art Pieces
1. From the ArtTalkAI directory, go to the `db` folder.
2. Inside of `seeds.rb`, copy and paste one of the existing art objects and modify it accordingly. All the fields should be self-explanatory.
3. For the "link" field, note that this is just a photo file name. Any new pictures should be stored into `/app/assets/images` for the frontend to render it properly.
4. Run `rake db:reset`. It will delete all tables and all seeds, and then regen tables and add new seeds. That way the IDs will start from 1 again.
5. To confirm your object is actually added properly, run this command to print all the objects within the DB to console: `rake custom:list_all_arts`.

## How to modify the DB with new fields
1. Change into the ArtTalk AI directory. `cd ArtTalkAI`.
2. Run the command, with a useful migration name `rails generate migration <TYPE_IN_A_MIGRATION_NAME_HERE>`
3. Now, your migration with the given name will appear in `db/migrate`. It has the current timestamp prepended to the name.
4. Inside your newly created `migration.rb` file, make the needed modifications.
5. Save the file, now from the ArttalkAI directory, run the command to complete the migration `rails db:migrate`.
6. To note, all migrations are stored and logged forever in that migrate folder. You can't modify an existing migration, you have to create a new one!

## How to run tests
1. After everything is set up from above...
2. `bundle exec cucumber` for cucumber tests
3. `bundle exec rspec` for rspec tests

## Misc Notes and Commands
For building  
- bundle install --without production  
- bundle exec cucumber  
- bundle exec rspec

DB related  
- rake db:migrate
- rake db:seed
- rails generate migration

Checking what objects are inside art DB
- rake custom:list_all_arts

Running server  
- rails server

View all possible routes
- rails routes

## Notes
- Need to be using ruby 2.6.6  
- Please refer to README.md in the git repo root directory.  
- DB : postgresql-triangular-46610
- App : enigmatic-shore-08561
- Lucid chart (plans, division of work, app diagrams, etc): https://lucid.app/lucidspark/d9f17524-badb-411f-bb76-b369b13f4705/edit?invitationId=inv_de2c4178-d16f-414f-97ea-470f00e82bff&page=0_0
- Art source: https://www.brushwiz.com/most-famous-paintings
