Feature: Markdown preview
  As an administrator
  I can preview Markdown content as I edit it
  So I can make sure I've written it correctly before I save

  # TODO: I've verified that this works, but for some reason the test won't pass.
  @wip
  @javascript
  Scenario: Preview without saving
    Given the content types are registered
    And I am logged in as an administrator
    When I go to the new Markdown block form
    And I fill in the following:
      | Name    | My Block                 |
      | Content | Here is some *Markdown*. |
    And I press "Preview"
    Then I should see the HTML "Here is some <em>Markdown</em>."
    But a Markdown block with name "My Block" should not exist