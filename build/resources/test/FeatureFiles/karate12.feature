Feature: Karate Test suite 12
  Calling static and nonstatic java variables

  Scenario: Static Variable TC
    * def constants = Java.type('misc.automationconstants')
    * print constants.devUrl
    * print constants.getDevUrl()


  Scenario: NonStatic Variable TC
    * def env1  =
    """
    function()
    {
      var tmp = Java.type('misc.automationconstants');
      var constants = new tmp();
      return constants.qaUrl;
    }
    """
    * def qaUrl = call env1
    * print qaUrl;


  Scenario: NonStatic Variable TC2
    * def env1  =
    """
    function()
    {
       return  Java.type('misc.automationconstants')().qaUrl;
    }
    """
    * def qaUrl = call env1
    * print qaUrl;