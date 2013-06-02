Feature: Markdown blocks
  As an administrator
  I can edit content blocks with Markdown
  So that I have a friendlier way of creating content than straight HTML

  Background:
    Given the content types are registered
    And I am logged in as an administrator

  Scenario: Markdown is an available content type
    When I go to the content library
    Then I should see "Markdown Block" as an available content type

  Scenario: Don't use a rich text editor for Markdown
    When I go to the new Markdown block form
    Then I should not see "Rich Text"

  Scenario: Markdown blocks get translated into HTML when rendered
    Given a Markdown block exists with name "My Block" and content "Here is some *Markdown* text."
    When I view the block's content
    Then I should see the HTML "Here is some <em>Markdown</em> text" within the content
    But I should not see "Name:" within the content
    And I should not see "Content:" within the content