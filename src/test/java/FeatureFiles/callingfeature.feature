Feature: Karate calling feature test suite

  Scenario: Calling test case
    * def result = call read("calledfeature.feature")
    * print result
    * match result.responseType == 'json'
    * match result.responseHeaders.Transfer-Encoding[0] == 'chunked'
    * match result.response.data[0].name == 'cerulean'