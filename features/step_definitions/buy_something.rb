Given("that I access Automation Practice website") do
  @page.(HomePage).load
end

When("I add a random product to the cart") do
  @page.(HomePage).add_item_to_cart
end

When("do the checkout") do
  @page.(Checkout).go_to_checkout
end

When("validate that my cart contains the selected product") do
  @page.(Checkout).check_product_in_cart
end

When("register a user") do
  @page.(SignUp).start_sign_up
  @page.(SignUp).fill_sign_up_form
end

When("confirm the delivery address") do
  @page.(Address).validate_address_fields
end

When("agree with terms of service") do
  @page.(TermsOfService).agree_with_terms
end

When("choose the payment method") do
  @page.(PaymentMethod).select_payment_method
end

When("validate the total price of the purchase") do
  @page.(PaymentMethod).validate_final_price
end

Then("I must have success on my purchase") do
  @page.(PaymentMethod).check_end_of_purchase
end