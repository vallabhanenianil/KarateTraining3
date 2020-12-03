Feature: Karate Test Suite 08
  Rest API end to end testing

  Scenario: Create, Fetch,Update,Delete employee Test
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"anil","salary":"123","age":"23"}
    When method POST
    And status 200
    * def id = response.data.id
    * match response.data.name == "anil"
    * print id

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method GET
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    And request {"name":"anil","salary":"123","age":"30"}
    When method PUT
    Then status 200


    Given url "http://dummy.restapiexample.com/api/v1/delete/" + id
    When method DELETE
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method GET
    Then status 200

