Feature: Karate test suite2
   validate json content
  Scenario: Json testcase1

    Given def json1 = { "id" : "101", "tool":{ "name":"Karate", "version":"0.9.6"} }
    * print json1
    * print json1.id
    * print json1.tool

  Scenario: Json testcase2
    Given def json1 =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
    """
    * print json1
    * print json1.id
    * print json1.tool

  Scenario: Json testcase3

    Given def json1 = { "id" : "101", "tool":{ "name":"Karate", "version":"0.9.6"}}

    * assert json1.id == "101"
    * assert json1.tool.name == "Karate"

  Scenario: Json testcase4
    Given def json1 = { "id" : "101", "tool":{ "name":"Karate", "version":"0.9.6"}}
     * match json1.tool == {"name":"Karate", "version":"0.9.6"}