class Address < SitePrism::Page

	elements :fullname, ".address_firstname.address_lastname"
	elements :company, ".address_company"
	elements :addresses, ".address_address1.address_address2"
	elements :city_state_zip, ".address_city.address_state_name.address_postcode"
	elements :country_name, ".address_country_name"
	elements :phone, ".address_phone"
	elements :phone_mobile, ".address_phone_mobile"
	element  :proceed_to_checkout, ".button.btn.btn-default.button-medium"

	def validate_address_fields
		fullname[0].text != fullname[1].text ? raise : nil
		company[0].text != company[1].text ? raise : nil
		addresses[0].text != addresses[1].text ? raise : nil
		city_state_zip[0].text != city_state_zip[1].text ? raise : nil
		country_name[0].text != country_name[1].text ? raise : nil
		phone[0].text != phone[1].text ? raise : nil
		phone_mobile[0].text != phone_mobile[1].text ? raise : nil
		proceed_to_checkout.click
	end

end