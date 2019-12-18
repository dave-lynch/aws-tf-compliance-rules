Feature: Ensure Naming Standard
  
  Scenario Outline: Naming Standard on all available resources
    Given I have <resource_name> defined
    When it contains <name_key>
    Then its value must match the "v1-(prod|uat|dev)-*" regex

    Examples:
    | resource_name           | name_key |
    | AWS EC2 instance        | name     |
    | AWS ELB resource        | name     |
    | AWS RDS instance        | name     |
    | AWS S3 Bucket           | bucket   |
    | AWS EBS volume          | name     |
    | AWS Auto-Scaling Group  | name     |
    | aws_key_pair            | key_name |
    | aws_ecs_cluster         | name     |
    | aws_vpn_gateway	        | name     | 
    | aws_security_group      | name     |

