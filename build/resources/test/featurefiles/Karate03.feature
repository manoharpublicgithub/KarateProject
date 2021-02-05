Feature: Karate test suite3
  validate json content

  Scenario: Json testcase1
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * print xml/info/id
    * print xml.info.tool.name

  Scenario: Json testcase2
    Given def xml =
    """
    <info>
      <id>101</id>
      <tool>
      <name>Karate</name>
      <version>0.9.6</version>
     </tool>
    </info>
    """
    * print xml
    * print xml/info/id
    * print xml.info.tool.name

  Scenario: Json testcase3
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml/info/id == "101"
    * match xml.info.tool.name == "Karate"

  Scenario: Json testcase4
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml contains "Karate"

  Scenario: Json testcase5
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml contains "<name>Karate</name>"

  Scenario: Json testcase6
    Given def xml =
    """
    <info>
      <tool>
      <name>Karate</name>
      <version>0.9.6</version>
      </tool>
       <tool>
      <name>IntelliJ</name>
      <version>2020.2</version>
       </tool>
    </info>
    """
    * match xml/info/tool[1]/name contains "Karate"
    * match xml/info/tool[2]/name contains "IntelliJ1"