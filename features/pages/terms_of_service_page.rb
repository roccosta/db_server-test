class TermsOfService < SitePrism::Page
  element  :agree_with_terms_checkbox, "#uniform-cgv"
  element  :proceed_to_checkout, ".button.btn.btn-default.button-medium"

  def agree_with_terms
    agree_with_terms_checkbox.click
    proceed_to_checkout.click
  end
end