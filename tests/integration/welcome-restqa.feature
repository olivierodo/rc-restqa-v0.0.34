Feature: Welcome to the RestQA community

Scenario: local scenario (not found)
Given I have the api gateway
  And I have the path "/not-found"
  And I have the method "GET"
  And the header contains "host" as "localhost:8000"
  And the header contains "connection" as "keep-alive"
When I run the API
Then I should receive a response with the status 404
  And the response body should be equal to:
  """
{
  "message": "Ressource not found"
}
  """
  
Scenario: local scenario
Given I have the api gateway
  And I have the path "/"
  And I have the method "GET"
  And the header contains "host" as "localhost:8000"
  And the header contains "connection" as "keep-alive"
When I run the API
Then I should receive a response with the status 204
  And the response body should be equal to:
  """
{
  "message": "Welcome"
}
  """
