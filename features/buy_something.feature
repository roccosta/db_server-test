Feature: Buy something in the Automation Practice website
  As a QA, I want to show my automation skills
  Buying a random product
  Also creating a new user for each run

@buy_something
Scenario: Buy a random product
  Given that I access Automation Practice website
  When I add a random product to the cart
  And do the checkout
  And validate that my cart contains the selected product
  And register a user
  And confirm the delivery address
  And agree with terms of service
  And validate the total price of the purchase
  And choose the payment method
  Then I must have success on my purchase