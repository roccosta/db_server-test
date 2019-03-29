Given("that I access Automation Practice website") do
  @page.(Home).load
end

When("I add a random product to the cart") do
  @page.(Home).add_item_to_cart
  @cart = @page.(Home).receive_cart
  @price = @page.(Home).receive_price
end

When("do the checkout") do
  @page.(Checkout).go_to_checkout
end

When("validate that my cart contains the selected product") do
  @page.(Checkout).check_product_in_cart(@cart)
end

When("register a user") do
  @page.(SignUp).start_sign_up
  @page.(SignUp).fill_personal_data
  @page.(SignUp).fill_address_data
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
  @page.(PaymentMethod).validate_final_price?(@price)
end

Then("I must have success on my purchase") do
  @page.(PaymentMethod).check_end_of_purchase?
end