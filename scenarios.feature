Feature:

@P0
Scenario: Signup to the alltrails account using Google
Given I navigate to the https://www.alltrails.com
When I click on sign up and then click on continue to Google
And I see the page to enter the credentials
Then I see the page with all list of trails near by to my location


@P0
Scenario: Signup to the alltrails account using Facebook
Given I navigate to the https://www.alltrails.com
When I click on sign up and then click on continue to Facebook
And I see the page to enter the credentials of facebook and authenticate
Then I have been redirected to the home page

@P0
Scenario: Signup to the alltrails account using Apple
Given I navigate to the https://www.alltrails.com
When I click on sign up and then click on continue to Apple
And I see the page to enter the credentials of Apple account and press enter button
And I enter the two factor authentication code from Apple and follow the Apple prompts hide/show the email
Then I have been redirected to the home page

@P0
Scenario: Signup to the alltrails account using Email
Given I navigate to the https://www.alltrails.com
When I enter my “<Firstname>”, “<lastName>”, <“EmailAddress>”, and “<password>”
And I click on sign up button
Then I have been redirected to the home page

@P0
Scenario: Signup to the alltrails account using existing Account in Alltrails
Given I navigate to the https://www.alltrails.com
When I enter my “<Firstname>”, “<lastName>”, <“EmailAddress>”, and “<password>”
And I click on sign up button
Then I should see the server error “You already have an account. Please log in.”

@P0
Scenario: Login to the alltrails account using invalid Account credentials
Given I navigate to the https://www.alltrails.com
When I enter my invalid <“EmailAddress>”, and “<password>”
And I click on login button
Then I should see the server error “Login failed. Please check your email and password.”

@P0
Scenario: Search functionality by city/ Places
Given I navigate to the https://www.alltrails.com
When I click on search bar and enter the city name “<CityName>”
And I should see the city names list beneath the search bar
Then I should see the best trails listed in the city entered

@P0
Scenario: Search functionality by Parks
Given I navigate to the https://www.alltrails.com
When I click on search bar and enter the city name “<CityName>”
And I should see the city names list beneath the search bar
Then I should see the best trails listed in the city entered

@P0
Scenario: Search functionality by Trails
Given I navigate to the https://www.alltrails.com
When I click on search bar and enter the city name “<Trail>”
And I should see the Trail name list beneath the search bar
Then I should see the trails listed in the Trail entered

@P0
Scenario: Search functionality by Maps
Given I navigate to the https://www.alltrails.com
When I click on search bar and enter the Trail name “<TrailName>”
And I should see the Trail map with the route and distance
Then I should see the trails listed in the Trail entered

@P0
Scenario: Search functionality by Activities
Given I navigate to the https://www.alltrails.com
When I click on search bar and enter the activity name “<AcitvityName>” (e.g., East Bay Regional Parks Challenge 2018)
And I should see the Trail map with the route and distance
Then I should see the trails listed in the Trail entered

@P0
Scenario: Search functionality by Lists
Scenario: Search functionality by Activities
Given I navigate to the https://www.alltrails.com
When I click on search bar and enter the Lists “<ListName>”
And I should see the Trail map with the route and distance
Then I should see the activities listed from the Lists entered

@P0
Scenario: Find the local favorites near the current location
Given I navigate to the https://www.alltrails.com
When I click on search bar and enter the Trail name “<TrailName>”
And I should see the Trail map with the route and distance
Then I should see the trails listed in the Trail entered

@P0
Scenario: Buy pro features
Given I navigate to the https://www.alltrails.com
When I click on Buy pro features button in homepage
And I select Annual plan and click on Get Started
And I login using my login credentials
And I enter my payment details using credit card
And click on Get All trails pro button
Then I should be upgraded to the pro account

@P0
Scenario: Gift pro features
  Given I navigate to the https://www.alltrails.com
  When I click on Gift pro features button in homepage
  And I select Annual plan and click on Buy Gift
  And I select the Email and enter the to and from, send date details in the form
  And I click next
  And I click check out as Guest
  And I enter the credit card details and click on the Give AllTrails Pro button
  Then I should be redirected to the page with the confirmation

@P1
Scenario: Validate if the next and previous arrows are working as expected
  Given I navigate to the https://www.alltrails.com
  When I click on the next button to scroll the local favorites to the right and see if the tiles are scrolled
  And I click on the previous button to scroll the local favorites to the left and see if the tiles are scrolled

