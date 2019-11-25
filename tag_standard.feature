Feature: Ensure Resources have Defined Tags

Scenario Outline: Ensure that specific tags are defined
    Given I have resource that supports tags defined
    When it contains tags
    Then it must contain <tags>
    And its value must not be null
    
    Examples:
      | tags           |
      | Name           |
      | Lifecycle      |
      | BU	       |
      | BUSub          |
      | Backup         | 
      | Terraform      |
