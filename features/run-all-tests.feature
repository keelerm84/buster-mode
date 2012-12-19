Feature: Run all tests

  Scenario: Opens a buffer with test results
    When I turn on buster-mode
    And I have passing tests
    And I press "C-c C-b ra"
    And I wait for the compilation to finish
    And I switch to buffer "*buster-test*"
    Then I should see "17 tests, 19 assertions, 1 runtime ... OK"
    And I should not see "[1A"
