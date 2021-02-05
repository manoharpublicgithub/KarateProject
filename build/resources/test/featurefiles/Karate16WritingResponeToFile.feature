Feature: Karate Testsuite16
  writing response to external file

  Scenario: select stmt test case
    * def util = Java.type("misc.Utils")
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * def res = get response
    #* def res =  response.data[0].email
    #* def res = get response $.data[0].email
    * print res
    * util.writeToFile("result.json",res)

    Scenario: Reading result file
      * def data = read("classpath:result.json")
      * print data

  Scenario: select stmt test case3
    * def util = Java.type("misc.Utils")
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * util.writeToFile("result.json",response)
