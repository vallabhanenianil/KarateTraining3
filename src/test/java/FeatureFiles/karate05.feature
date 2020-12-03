Feature: Karate test suite 05
  Testing REST API

  @rest
  Scenario: REST API Testing
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"

    When method POST
    Then  status 200
    And match response contains "104"
    And match response //string  == "104"

