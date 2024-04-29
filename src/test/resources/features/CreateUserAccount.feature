Feature: Create User Account

  Scenario: Successfully creates a user account
    Given I have entered date of birth "1/1/2000"
    And I have entered first name "Joe"
    And I have entered last name "Joe"
    And I have entered email and confirmed email "qwerty@gas.com"
    And I have entered password and confirmed password "Qwerty123" "Qwerty123"
    And I have checked Terms and Conditions
    And I have checked Over 18 and Code of Conduct
    When I press the join button
    Then I am registered

  Scenario: Creates a user account without last name
    Given I have entered date of birth "1/1/2000"
    And I have entered first name "Joe"
    And I have entered email and confirmed email "qwerty@gas.com"
    And I have entered password and confirmed password "Qwerty123" "Qwerty123"
    And I have checked Terms and Conditions
    And I have checked Over 18 and Code of Conduct
    When I press the join button
    Then I failed to get registered because of missing last name

  Scenario: Creates a user account with mismatch password
    Given I have entered date of birth "1/1/2000"
    And I have entered first name "Joe"
    And I have entered last name "Joe"
    And I have entered email and confirmed email "qwerty@gas.com"
    And I have entered password and confirmed password "Qwerty123" "sadasdasdasd"
    And I have checked Terms and Conditions
    And I have checked Over 18 and Code of Conduct
    When I press the join button
    Then I failed to get registered because of mismatch password

  Scenario: Creates a user account without agreeing with the terms and conditions
    Given I have entered date of birth "1/1/2000"
    And I have entered first name "Joe"
    And I have entered last name "Joe"
    And I have entered email and confirmed email "qwerty@gas.com"
    And I have entered password and confirmed password "Qwerty123" "Qwerty123"
    And I have checked Over 18 and Code of Conduct
    When I press the join button
    Then I failed to get registered because of not agreeing with the terms and conditions