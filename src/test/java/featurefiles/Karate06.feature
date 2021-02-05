Feature: Karate test suite6
  logical

  Scenario: Karate testcase1
  additional description 3 lines

    Given def a = 10
    And def b = 20
     * assert a == 10 && b == 20

  Scenario: Karate testcase2
  additional description 3 lines

    Given def a = 10
    And def b = 20
    * assert a == 10 || b == 21