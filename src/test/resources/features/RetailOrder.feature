@RetailOrder
Feature: Retail Order Page

  Background: 
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'Yaqubiphantom@gmail.com' and password 'Qwe@12345'
    And User click on login button
    Then User should be logged in into Account
    #Some times Scenarios give timeoutException
 @cancellingOrder 
  Scenario: Verify User can cancel the order
    And User click on Cancel The Order button
    And User select the cancelation Reason 'Bought wrong item'
    And User click on Cancel Order button
    Then a cancelation message should be displayed 'Your Order Has Been Cancelled'
	
	@returnorder 
  Scenario: Verify User can Return the order
    And User click on Return Items button
    And User select the Return Reason 'Item damaged'
    And User select the drop off service 'FedEx'
    And User click on Return Order button
    Then a return message should be displayed 'Return was successfull'
	
	@writingReviewOnOrder 
  Scenario: Verify User can write a review on order placed
    And User click on Review button
    And User write Review headline 'headline value' and Review text 'review text'
    And User click Add your Review button
    Then a review message should be displayed 'Your review was added successfully'

