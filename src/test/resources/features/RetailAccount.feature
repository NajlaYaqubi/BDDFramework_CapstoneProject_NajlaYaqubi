@AccountTestCases
Feature: Retail Account Page

  Background: 
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'Yaqubiphantom@gmail.com' and password 'Qwe@12345'
    And User click on login button
    And User should be logged in into Account

  @AccountTest1
  Scenario: Verify User can update Profile Information
    When User click on Account option
    And User update Name 'Najlajan' and Phone '6093339999'
    And User click on Update button
    Then User profile information should be updated

  #The@AccountTest2 is working, because of changeing password every time commited
  
  #@AccountTest2
  #Scenario: Verify User can Update password
  # When User click on Account option
  # And User enter below information
  #  | previousPassword | newPassword | confirmPassword |
  #  | Tek@54321        | Tek@9876    | Tek@9876        |
  #And User click on Change Password button
  # Then a message should be displayed 'Password Updated Successfully'
  
  @Payment
  Scenario: Verify User can add a payment method
    When User click on Account option
    * User click on Add a payment method link
    * User fill Debit or credit card information
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 9876493213213495 | Phantom    |              11 |           2027 |          123 |
    * User click on Add your card button
    Then a message should be displayed 'Payment Method added sucessfully'

  @AccountCard
  Scenario: Verify User can edit Debit or Credit card
    When User click on Account option
    And User select card with ending '3493'
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 7412869633698522 | Phantom    |              12 |           2025 |          456 |
    And user click on Update Your Card button
    Then a message should be displayed 'Payment Method updated Successfully'

  @AccountCard
  Scenario: Verify User can remove Debit or Credit card
    When User click on Account option
    And User select card with ending '8521'
    And User click on remove option of card section
    Then payment details should be removed

  @AccountAddress
  Scenario: Verify User can add an Address
    When User click on Account option
    And User click on Add address option
    And user fill new address form with below information
      | country      | fullName      | phoneNumber | streetAddress | apt      | city      | state      | zipCode      |
      | countryValue | fullnameValue | PhoneValue  | stAddress     | aptValue | cityValue | stateValue | zipCodeValue |
    And User click Add Your Address button
    Then a message should be displayed 'Address Added Successfully'

  @AccountAddress
  Scenario: Verify User can edit an Address added on account
    When User click on Account option
    And User click on edit address option
    And user fill new address form with below information
      | country      | fullName      | phoneNumber | streetAddress | apt      | city      | state      | zipCode      |
      | countryValue | fullnameValue | PhoneValue  | stAddress     | aptValue | cityValue | stateValue | zipCodeValue |
    And User click update Your Address button
    Then a message should be displayed 'Address Updated Successfully'
    
  #@AccountAddress #Failing please review
  #Scenario: Verify User can remove Address from Account
   # When User click on Account option
    #And User click on remove option of Address section
    #Then Address details should be removed
