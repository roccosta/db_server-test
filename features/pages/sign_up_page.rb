class SignUp < SitePrism::Page
	element  :create_an_account, "#SubmitCreate"
	element  :email_create, "#email_create"
	element  :gender_1, "#uniform-id_gender1"
	element  :gender_2, "#uniform-id_gender2"
	element  :customer_firstname, "#customer_firstname"
	element  :customer_lastname, "#customer_lastname"
	element  :passwd, "#passwd"
	element  :days, "#uniform-days"
	element  :months, "#uniform-months"
	element  :years, "#uniform-years"
	element  :newsletter, "#uniform-newsletter"
	element  :optin, "#uniform-optin"
	element  :firstname, "#firstname"
	element  :lastname, "#lastname"
	element  :company, "#company"
	element  :address1, "#address1"
	element  :address2, "#address2"
	element  :city, "#city"
	element  :id_state, "#uniform-id_state"
	element  :postcode, "#postcode"
	element  :id_country, "#uniform-id_country"
	element  :other, "#other"
	element  :phone, "#phone"
	element  :phone_mobile, "#phone_mobile"
	element  :address_alias, "#alias"

	def start_sign_up
		email_create.set Faker::Internet.free_email
		create_an_account.click		
	end

	def fill_sign_up_form
		send("gender_#{Faker::Number.between(1, 2)}").click
		faker_first_name = Faker::Name.first_name
		faker_last_name = Faker::Name.last_name
		customer_firstname.set faker_first_name
        customer_lastname.set faker_last_name
        passwd.set 'Password1!'
        days.select('10')
        months.select('February')
        years.select('1989')
        newsletter.click
        optin.click
        firstname.set faker_first_name
        lastname.set faker_last_name
        company.set Faker::Company.name
        address1.set Faker::Address.full_address
        address2.set Faker::Address.full_address
        city.set Faker::Address.city
        id_state.select('Iowa')
        postcode.set Faker::Number.number(5)
        id_country.select('United States')
        other.set 'Awesome QA skills!'
        phone.set Faker::Number.number(10)
        phone_mobile.set Faker::PhoneNumber.cell_phone
        address_alias.set Faker::Address.street_address
        click_button('submitAccount')
	end
end