Feature: Markdown blocks
  As an administrator
  I can edit content blocks with Markdown
  So that I have a friendlier way of creating content than straight HTML

  Background:
    Given I am logged in as an administrator

  Scenario: Markdown is an available content type
    When I go to the content library
    Then I should see "Markdown Block" as an available content type

  Scenario: Don't use a rich text editor for Markdown
    When I go to the new Markdown block form
    Then I should not see "Rich Text"
