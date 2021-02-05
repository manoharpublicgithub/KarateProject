Feature: Karate test suite7
  validating data types of variable

  Scenario: Datatype validation testcase1

    Given def a = 10
    And def b = "Karate"
    * def c = true
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"
