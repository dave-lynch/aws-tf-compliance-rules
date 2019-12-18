Feature: EC2 should have a role attached
  Scenario: Success if an EC2 has an IAM Role Attached to it
    Given I have AWS EC2 instance defined
    Then it must contain iam_instance_profile
