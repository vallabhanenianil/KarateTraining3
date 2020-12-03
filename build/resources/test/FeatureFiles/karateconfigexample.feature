Feature: Karate config suite file
  Reading global variable from karate config js file

  Scenario: Karate config test case1
    Given url baseUrl
    And path listUsers
    When method get
    Then status 200