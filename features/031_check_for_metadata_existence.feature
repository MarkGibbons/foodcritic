Feature: Check for metadata existence

  In order to ensure that cookbook has the minimum
  As a developer
  I want to verify that the metadata file exist

  Scenario: Cookbook without metadata.rb file
    Given a cookbook that does not have defined metadata
    When I check the cookbook
    Then the non existing metadata warning 031 should be displayed against the metadata file

  Scenario: Cookbook with metadata.rb file
    Given a cookbook that has the default boilerplate metadata generated by knife
    When I check the cookbook
    Then the non existing metadata warning 031 should not be displayed against the metadata file
