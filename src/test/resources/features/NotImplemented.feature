
Feature: As a developer I'd like to see a meaningful error message (instead of an NPE)
  when I run cucumber with the --strict paramater and
  when I have an unimplemented feature.

Scenario: This feature is not yet implemented
  It should fail when using --strict
  It should fail with a meaningful error message when using --strict (and not with a NPE)

