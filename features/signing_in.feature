Feature: Signing in
  
  Scenario: Unsuccessful signin
    Given a user visits the signin page
    When he submits invalid signin information
    Then he should see an error message

  Scenario: Unsuccessful signup
	    Given a user visits the signup page
	    When he submits invalid signup information
	    Then he should see an error message
  
  Scenario: Successful signin
    Given a user visits the signin page
      And the user has an account
      And the user submits valid signin information
      Then  he should see a signout link

  Scenario: Successful signup
	    Given a user visits the signup page
	    And the user submits valid signup information
	    Then  he should see a signout link
		
		
	
		