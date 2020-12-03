Feature: Test fixture suite
  Demo using background after scneario, after feature

  Background: Before Scenario
     * print "Before Scenario"
    * configure afterScenario =
    """
    function(){

      karate.log("from after Scenario");
      }
    """

    * configure afterFeature =
    """
    function(){

      karate.log("from after feature");
      }
    """


    Scenario: Test Case1
      * print "from test case 1"

  Scenario: Test Case2
    * print "from test case 2"

