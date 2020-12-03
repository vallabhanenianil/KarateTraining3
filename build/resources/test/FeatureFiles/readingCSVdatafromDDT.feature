Feature: Test suite 14
  Reading data from CSV

  Scenario Outline: Reading data from DDT testing
      * print "<custid>,<custname>,<age>,<yob>"
    Examples:
   | read('classpath:data.csv') |
