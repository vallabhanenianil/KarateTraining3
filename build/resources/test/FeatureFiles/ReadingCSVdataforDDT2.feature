Feature: Test suite 15
  Reading data from CSV

    Background:
      * def data =  read('classpath:data.csv')
  Scenario Outline: Reading data from DDT testing
    * print "<custid>,<custname>,<age>,<yob>"
    Examples:
      | data |
