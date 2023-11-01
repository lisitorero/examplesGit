Feature: Ejemplo 1_Reqres.in
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://reqres.in/api/'


  Scenario: all users
    Given path 'users'
    When method get
    Then status 200


  Scenario: user by id
    Given path 'users'
    And path '/2'
    When method get
    Then status 200

  Scenario: create user
    Given path 'users'
    When method post
    Then status 201

    * def user =
      """
      {
       "name": "morpheus",
      "job": "leader",
      "id": "425",
      "createdAt": "2023-10-27T03:17:21.426Z"
      }
      """

  Scenario: delete user by id
    Given path 'users'
    And path '/2'
    When method delete
    Then status 204

  Scenario: update user
    Given path 'users'
    And path '/2'
    When method put
    Then status 200

    * def user =
      """
     {
    "name": "morpheus",
    "job": "zion resident"
      }
      """

  Scenario: patch user
    Given path 'users'
    And path '/2'
    When method patch
    Then status 200

    * def user =
      """
     {
    "name": "morpheus",
    "job": "zion resident"
      }
      """
