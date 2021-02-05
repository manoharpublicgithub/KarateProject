Feature: callingfeature suite
  CallingFeature

  @rest
  Scenario: Calling Feature Testcase1
    * def result = call read("CalledFeature.feature")
    * print result
    * assert Result.response.string