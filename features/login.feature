Feature: Successful Login
  
  Scenario: Admin Login
    Given that I am on the Moodle Login Page to login as admin
    When I log into Moodle as an Admin
    Then I should be on the Admin Dashboard page
  
  Scenario: User Login
    Given that I am on the login page to login as a user
    When I log into Moodle as an user
    Then I should be on the user Dashboard page
    
  Scenario: Guest Login
    Given I am on the login page to login as a guest
    When I select the Log in as a guest
    Then I should be on the Guest Dashboard page
    
  Scenario: Unsuccessful Login
    Given I am on the login page to login with an incorrect password
    When I attempt to login with an incorrect password
    Then I am denied access and returned to the login page
    Given I am on the login page to login with an incorrect username
    When I attempt to login with an incorrect username
    Then I am denied access and returned to the login page
  