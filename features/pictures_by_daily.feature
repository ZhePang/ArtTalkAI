Feature: Display Picture of the Day

  As a user of the app
  So that I can view the Picture of the Day
  I want to see the picture when I open the app

  As a user of the app
  So that I don't see a new picture every time I revisit the app on the same day
  I want to see the same picture of the day when I revisit the app twice on the same day

  As a user of the app
  So that I can learn more about the Picture of the Day
  I want to see the title, description, and author of the work when I open a picture of the day

Background: arts in database

  Given the following arts exist:
  | title        | description                                                                                                                 | link             | release_date |
  | Mona Lisa    | Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. | monalisa.jpeg    |   1503-01-01 |
  | Starry Night | Description of Art 2.                                                                                                       | starrynight.jpeg |   1789-06-06 |
  | Tsunami      | Description of Art 3, Tsunami. Blah blah blah.                                                                              | tsunami.png      |   0800-12-31 |

Scenario: View Daily Art Piece
  Given I am on the ArtTalkAI home page
  Then I should have the art piece of the day

Scenario: View Picture Details
  Given I am on the detailed page of the art piece of the day
  Then I should have the title, description, and release date of the art piece of the day

# The Chatbot Feature is to be implemented in the next iteration
#Scenario: Access Chatbot from Picture of the Day
#  Given I am viewing the Picture of the Day
#  When I click the chatbot link
#  Then I should be connected to the chatbot for further information