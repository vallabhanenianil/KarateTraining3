Feature: Karate testsuite 1
  Demo of using variables in scenario

  Scenario: Karate Test Case1

    Given def a = 10
    And def b = 20
    And def c = a + b
    Then assert c == 30
    And print "c=", c
    And karate.log("Test ended")

  Scenario: Karate Test Case2

    Given def a = 10
    * def b = 60
    * def c = a + b
    Then assert c == 70
    * print "c=", c
    * karate.log("Test ended")

  Scenario: Karate Test Case3

    * def a = 10
    * def b = 50
    * def c = a * b
    * assert c == 500
    * print "c=", c
    * karate.log("Test ended")