Feature: Karate test suite10
  restapi get

  @rest
  Scenario: rest api Testcase1
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name == "Tiger Nixon"
    * match response.status == "#string"

  Scenario: rest api Testcase2
    Given url "http://dummy.restapiexample.com"
    And path "/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name == "Tiger Nixon"
    * match response.status == "#string"
