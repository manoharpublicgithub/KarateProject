Feature: Karate Testsuite 23
  reading global variable from karate-config

  Scenario: Karate config test case
    Given url baseUrl
    And path listUsers
    When method 200
    * print response