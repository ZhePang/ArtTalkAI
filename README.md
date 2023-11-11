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
4. Run these commands to setup the DB: `rake db:migrate`. Then: `rake db:seed`.
5. Now, run `rails server`. On your browser, go to `localhost:3000` to view the page!

## How To Add More Art Pieces
1. From the ArtTalkAI directory, go to the `db` folder.
2. Inside of `seeds.rb`, copy and paste one of the existing art objects and modify it accordingly. All the fields should be self-explanatory.
3. For the "link" field, note that this is just a photo file name. Any new pictures should be stored into `/app/assets/images` for the frontend to render it properly.
4. Rerun `rake db:seed`.
5. To confirm your object is actually added properly, run this command to print all the objects within the DB to console: `rake custom:list_all_arts`.

## How to modify the DB with new fields
1. Change into the ArtTalk AI directory. `cd ArtTalkAI`.
2. Run the command, with a useful migration name `rails generate migration <TYPE_IN_A_MIGRATION_NAME_HERE>`
3. Now, your migration with the given name will appear in `db/migrate`. It has the current timestamp prepended to the name.
4. Inside your newly created `migration.rb` file, make the needed modifications.
5. Save the file, now from the ArttalkAI directory, run the command to complete the migration `rails db:migrate`.
6. To note, all migrations are stored and logged forever in that migrate folder. You can't modify an existing migration, you have to create a new one!

## Misc Commands
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

## Notes
- Need to be using ruby 2.6.6  
- Please refer to README.md in the git repo root directory.  
- DB : postgresql-triangular-46610
- App : enigmatic-shore-08561