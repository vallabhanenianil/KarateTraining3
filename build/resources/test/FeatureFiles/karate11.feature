Feature: Karate Test Suite 11
  Demo of java script function within scenario

  Scenario: Java Script Scenario1
    * def fn1 = function(){ return 1; }
    * def fn2 =
    """
    function(id){
    karate.log(id);
    }
    """
    * print fn1()
    * fn2("ID#007")