class Checkout < SitePrism::Page

	element  :product_name, ".product-name"
	elements :product_price, ".cart_total"
	element  :proceed_to_checkout, ".btn.btn-default.button.button-medium"

	element  :proceed_to_checkout2, ".button.btn.btn-default.standard-checkout.button-medium"

	def go_to_checkout
		wait_until_proceed_to_checkout_visible
		proceed_to_checkout.click
	end

	def check_product_in_cart
		checkout_cart = []
		checkout_cart << product_name.text + "," + product_price[1].text
		$cart != checkout_cart ? raise : nil
		proceed_to_checkout2.click
	end

end