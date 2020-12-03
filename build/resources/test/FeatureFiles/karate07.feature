Feature: Karate test suite 07
  Testing REST API with JSON output

  @rest
  Scenario: REST API Testing with JSON output
    Given url "http://dummy.restapiexample.com/api/v1/employees"

    When method GET
    Then  status 200
    * print response
    * match response.status == 'success'
    * match response.status == '#string'
    * match response.data == '#array'
    * match response.data[*].employee_name contains "Sonya Frost"
   # * match responseType == 'json'

