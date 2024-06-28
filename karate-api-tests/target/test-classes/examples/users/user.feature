Feature: User Management API

  Background:
    * url 'https://reqres.in/api'

  Scenario: Consult a user by ID
    Given path 'users', 2
    When method get
    Then status 200
    And match response.data.id == 2

  Scenario: Update a user's details
    Given path 'users', 2
    And request { name: 'David Paez', job: 'QA Engineer' }
    When method put
    Then status 200
    And match response.name == 'David Paez'
    And match response.job == 'QA Engineer'

  Scenario: Delete a user
    Given path 'users', 2
    When method delete
    Then status 204

 Scenario: Verify user deletion
    * configure afterScenario = 'karate.delay(3000)' 
   Given path 'users?page=2'
    When method get
    Then status 200
    * def users = response.data
    * def userExists = karate.filter(users, function(x){ return x.id == 2 }).length == 0
    * match userExists == true
  #Asumimos que este ultimo caso de prueba va a fallar porque al parecer no hay persistencia en los datos y el borrado no funciona.