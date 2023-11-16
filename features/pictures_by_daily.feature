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
  | id | title        | description                                                                                                                 | link             | release_date |
  | 1 | Mona Lisa    | Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. | monalisa.jpeg    |   1503-01-01 |
  | 2 | Starry Night | Description of Art 2.                                                                                                       | starrynight.jpeg |   1789-06-06 |
  | 3 | Tsunami      | Description of Art 3, Tsunami. Blah blah blah.                                                                              | tsunami.png      |   0800-12-31 |

Scenario: View Daily Art Piece
  Given I am on the ArtTalkAI home page
  Then I should have the art piece of the day

Scenario: View Picture Details
  Given I am on the detailed page of the art piece of the day
  Then I should have the title, description, and release date of the art piece of the day

Scenario: View Gallery from Daily Art Piece and back
  Given I am on the ArtTalkAI home page
  When I follow "Click here to view the Gallery Section"
  Then I should be on the gallery page
  And I should have all infos of each art
  When I click the first link of "Back to art of the day"
  Then I should be on the ArtTalkAI home page

Scenario: Visit Picture Details from Gallery and back
  Given I am on the gallery page
  When I click the first link of "Click to Read More"
  Then I should have the art infos
  When I follow "Click here to view the Gallery Section"
  Then I should be on the gallery page

Scenario: Access Chatbot from Art Detailed Page and Get Back from the Chatbot to the Detailed Page
  Given I am on the detailed page of the art piece of the day
  When I follow "Talk to our ArtGuide?"
  Then I should have a new chat created with the ArtGuide and saying welcome of the art
  When I follow "Back to Details"
  Then I should be on the detailed page of the art piece of the day

Scenario: Create new chat manually at Chatbot Page
  Given I am on the Chatbot page
  When I press "+ New Chat"
  Then I should open a new chat with a link to the gallery
  When I follow "Go to Gallery"
  Then I should be on the gallery page

Scenario: Send message to Chatbot
  Given I am on the detailed page of the art piece of the day
  When I follow "Talk to our ArtGuide?"
  And I fill in "chat[message]" with "who painted this?"
  And I press "Send a message"

Scenario: Access past conversations at Chatbot page
  Given I am on the gallery page
  And I click the first link of "Click to Read More"
  And I follow "Talk to our ArtGuide?"
  And I follow "Back to Details"
  And I follow "Click here to view the Gallery Section"
  And I click the second link of "Click to Read More"
  And I follow "Talk to our ArtGuide?"
  And I follow "Back to Details"
  And I follow "Click here to view the Gallery Section"
  And I click the third link of "Click to Read More"
  And I follow "Talk to our ArtGuide?"
  When I follow "Mona Lisa"
  Then I should have the conversation on "Mona Lisa"
  When I follow "Starry Night"
  Then I should have the conversation on "Starry Night"
  When I follow "Tsunami"
  Then I should have the conversation on "Tsunami"