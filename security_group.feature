Feature: Security Group Compliance Rules

Scenario Outline: Well-known insecure protocol exposure on Public Network for ingress traffic
    Given I have AWS Security Group defined
    When it contains ingress
    Then it must not have <proto> protocol and port <portNumber> for 0.0.0.0/0


  Examples:
    | ProtocolName | proto | portNumber    |
    | Any          | tcp   | 0-60000       |

