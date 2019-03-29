class PaymentMethod < SitePrism::Page
  include RSpec::Matchers

  element  :paymentmethod_1, ".bankwire"
  element  :paymentmethod_2, ".cheque"
  element  :total_shipping, "#total_shipping"
  element  :total_price, "#total_price"
  element  :proceed_to_checkout, ".button.btn.btn-default.button-medium"

  def select_payment_method
    send("paymentmethod_#{Faker::Number.between(1, 2)}").click
    proceed_to_checkout.click
  end

  def validate_final_price?(price)
    final_price = "$#{'%.2f' % (price[1..-1].to_f + total_shipping.text[1..-1].to_f)}"
    final_price != total_price.text ? raise : nil
  end

  def check_end_of_purchase?
    expect(page.has_content?("Your order on My Store is complete.")).to be true
  end
end