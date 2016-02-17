Feature:
  As a devops
  In order to keep traces of communication with external components
  I want my application to log the external calls made with Guzzle

  Scenario: A successful request stores a trace
    Given the 3rd party API will succeed
    When I send a request to the 3rd party API
    Then a request profile should have been stored

  Scenario: An errored request stores a trace
    Given the 3rd party API will fail
    When I send a request to the 3rd party API
    Then a request profile should have been stored

  Scenario: It creates a request ID
    Given the 3rd party API will succeed
    When I send a request to the 3rd party API
    Then the sent request should contain an "x-message-id" header
