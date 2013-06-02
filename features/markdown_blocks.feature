Feature: Markdown blocks
  As an administrator
  I can edit content blocks with Markdown
  So that I have a friendlier way of creating content than straight HTML

  Scenario: Markdown is an available content type
    Given I am logged in as an administrator
    When I go to the content library
    Then I should see "Markdown Block" as an available content type