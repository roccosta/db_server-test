class Home < SitePrism::Page
	set_url  'http://automationpractice.com/index.php?'
	element  :add_to_cart, ".button.ajax_add_to_cart_button.btn.btn-default"
	elements :product_frame, ".product-image-container"
	element  :product_name, "#layer_cart_product_title"
	element  :product_price, "#layer_cart_product_price"

	def add_item_to_cart
		range = rand(1 + product_frame.length)
		product_index = range == 7 ? range - 1 : range 
		product_frame[product_index].tap(&:hover)

		wait_until_add_to_cart_visible
		add_to_cart.click
	end

	def receive_cart
		cart = []
		cart << product_name.text + "," + product_price.text
	end

	def receive_price
		price = product_price.text
	end
end