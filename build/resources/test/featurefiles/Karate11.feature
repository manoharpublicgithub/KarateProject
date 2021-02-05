Feature: APi chain testing

  @rest
  Scenario: rest api Testcase1
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"test11","salary":"12311","age":"23"}
    When method post
    Then status 200
    * print response
    * def id = response.data.id
    * print id

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method get
    Then status 200
    * print response
    * assert response.data.id == id

    Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    And request {"name":"test11_upd","salary":"12311","age":"23"}
    When method put
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/delete/" + id
    When method delete
    Then status 200
    * assert response.message == "successfullt! deleted Records"
