Feature: Karate test suite7
  validating regular expression

  Scenario: Regular expression validation testcase1

    Given def a = "10"
    And def b = "Karate"
    And def c = "Karate Framework abc"

    * match a == "#regex [0-9]+"
    * match a == "#regex \\d+"
    * match b == "#regex \\w+"
    * match b == "#regex [A-Z][a-z]+"
    * match c == "#regex [A-Za-z\\s]+"

