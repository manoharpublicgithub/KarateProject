Feature: calledfeature suite
  CalledFeature

  @rest
  Scenario: Called Feature Testcase1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"
    When method POST
    Then status 200
    Then print response
    * print responseHeaders
    * print responseTime
    * print responseType
    * match response //string == 104l

