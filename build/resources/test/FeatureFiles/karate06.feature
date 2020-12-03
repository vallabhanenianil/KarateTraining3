Feature: Karate test suite 06
  Testing SOAP API with external data file

  @soap
  Scenario: SOAP API Testing with external file
    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request read('soapAPIPayloadInput.xml')

    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then  status 200
    And match response contains "98.6"
    And match response //CelsiusToFahrenheitResult == "98.6"
    And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == 'xml'
    And assert responseTime <= '1000'
