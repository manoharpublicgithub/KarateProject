Feature: Karate test suite1
  test suite descsription max 3 lines
  
  Scenario: Karate testcase1
    additional description 3 lines

    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert c == 30
    And print "C = ",c
    And karate.log("End of the Test")

  Scenario: Karate testcase2
  additional description 3 lines

    Given def a = 10
    * def b = 20
    When def c = a + b
    Then assert c == 30
    * print "C = ",C
    And karate.log("End of the Test")

  Scenario: Karate testcase3
  additional description 3 lines

    * def a = 10
    * def b = 20
    * def c = a + b
    * assert c == 30
    * print "C = ",C
    * karate.log("End of the Test")

  Scenario: Karate testcase4
  additional description 3 lines

    * def a = 10
    * def b = 20
    Then def c = a + b
    Given assert c == 30
    * print "C = ",c
    * karate.log("End of the Test")