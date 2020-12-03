Feature: Karate called test suite
  Using URL and PATH

  Scenario: URL and PATH usage test case1

    Given url "http://reqres.in"
    And path "/api/users?page=2"
    When method GET
    Then status 200
    And response.page == 1
    And match response.page == '##'