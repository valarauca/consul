@setupApplicationTest
Feature: dc / nodes / sorting
  Scenario:
    Given 1 datacenter model with the value "dc-1"
    And 6 node models from yaml
    ---
    - Node: Node-A
    - Node: Node-B
    - Node: Node-C
    - Node: Node-D
    - Node: Node-E
    - Node: Node-F
    ---
    When I visit the nodes page for yaml
    ---
      dc: dc-1
    ---
    When I click selected on the sort
    When I click options.1.button on the sort
    Then I see name on the nodes like yaml
    ---
    - Node-F
    - Node-E
    - Node-D
    - Node-C
    - Node-B
    - Node-A
    ---
    When I click selected on the sort
    When I click options.0.button on the sort
    Then I see name on the nodes like yaml
    ---
    - Node-A
    - Node-B
    - Node-C
    - Node-D
    - Node-E
    - Node-F
    ---

