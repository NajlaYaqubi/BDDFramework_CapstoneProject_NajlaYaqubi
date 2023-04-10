@SignInCompleteTest
Feature: Sign In Feature

  Background: 
    Given User is on retail website
    When User click on Sign in option

  @signInTestCase
  Scenario: Verify user can sign in into Retail Application
    And User enter email 'Yaqubiphantom@gmail.com' and password 'Qwe@12345'
    And User click on login button
    Then User should be logged in into Account

 @signInTestWithDifferentAccounts
  Scenario Outline: Verify user can login with different email and pass
    And User enter email <email> and password <password>
    And User click on login button
    Then User should be logged in into Account

    Examples: 
      | email                          | password    |
      | 'PhantomClassSE@tekschool.us'  | 'Tek@12345' |
      | 'PhantomClassCSA@tekschool.us' | 'Tek@85236' |
      | 'PhantomClassTK@tekschool.us'  | 'Ket@8899'  |

  @signUpTest
  Scenario: Verify user can create an account into Retail Website
    And User click on Create New Account button
    And User fill the signUp information with below data
      | name    | email                     | password  | confirmPassword |
      | Phantom | phantomEE@tekschool.us    | Tek@12345 | Tek@12345       |
    And User click on SignUp button
    Then User should be logged into account page

  @signUpMultipleAccounts
  Scenario Outline: Verify user can create an account into Retail Website
    And User click on Create New Account button
    And User fill the signUp information with below data
      | name   | email   | password   | confirmPassword   |
      | <name> | <email> | <password> | <confirmPassword> |
    And User click on SignUp button
    Then User should be logged into account page

    Examples: 
      | name    | email                        | password  | confirmPassword |
      | Phantom | PhantomSSS@tekschool.us  | Tek@12345 | Tek@12345       |
      | Phantom | PhantomXXX@tekschool.us | Tek@12345 | Tek@12345      |
      | Phantom | PhantomCCC@tekschool.us  | Ket@12345 | Ket@12345        |
      | Phantom | PhantomBBB@tekschool.us | Tek@12345 | Tek@12345       |
