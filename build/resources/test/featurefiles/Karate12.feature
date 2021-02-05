Feature: Suite 12 Rest API Data Driven Testing
  Data driven testing

  @ddt
  Scenario Outline: DDT Test case1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Temp>"
    When method POST
    Then status 200
    Then print response
    * print responseHeaders
    * print responseTime
    * print responseType
    * match response //string == <Result>
    Examples:
      |Temp  |Result |
      |37  |98.6 |
      |40  |104  |

  Scenario Outline: DDT Test case2
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Temp>"
    When method POST
    Then status 200
    Then print response
    * print responseHeaders
    * print responseTime
    * print responseType
    * match response //string == <Result>
    Examples:
     | read("data.csv")|

