Feature: Security Group Compliance Rules

Scenario Outline: Excessive exposure on Public Network for ingress traffic
    Given I have AWS Security Group defined
    When it contains ingress
    Then it must not have <proto> protocol and port <portNumber> for 0.0.0.0/0

  Examples:
    | ProtocolName | proto | portNumber    |
    | Any          | tcp   | 0-60000       |

Scenario Outline: Excessive exposure on Public Network for egress traffic
    Given I have AWS Security Group defined
    When it contains egress
    Then it must not have <proto> protocol and port <portNumber> for 0.0.0.0/0

  Examples:
    | ProtocolName | proto | portNumber    |
    | Any          | tcp   | 0-60000       |

