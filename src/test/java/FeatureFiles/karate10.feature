Feature: Karate Test Suite 10
  Data driven testing

  @ddt
  Scenario Outline: DDT Test Case

    Given url "http://reqres.in"
    And path "/api/users?page='<PNO>'"
    When method GET
    Then status 200
    And response.page == 1
    And match response.page == '##'
  Examples:
    | PNO |
    | 1   |
    | 2   |
    | 3   |
    | 4   |
    | 5   |