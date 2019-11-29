Feature: S3 Bucket Policies
    This feature checks if any S3 bucket is defined without encryption, logging, versioning.
    Scenario: Reject if an S3 bucket is not encrypted
        Given I have AWS S3 Bucket defined
        Then it must contain server_side_encryption_configuration
    Scenario: Reject if an S3 bucket is not versioned
        Given I have AWS S3 Bucket defined
	Then it must contain versioning
    Scenario: Reject if an S3 bucket is not logging
        Given I have AWS S3 Bucket defined
        Then it must contain logging
