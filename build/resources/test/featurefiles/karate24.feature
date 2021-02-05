Feature: karate Test suite 24
  karate hooks

  Background: init
    * print "From Background block"

    * configure afterScenario =
    """
    function (){
    karate.log("from after scenario")
    }
    """
    * configure afterFeature =
    """
    function (){
    karate.log("from after feature")
    }
    """


  Scenario: Karate hooks testcase1
    * print "From Sceanrio block"