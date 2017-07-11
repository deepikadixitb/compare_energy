When(/^I should be in your preferences page$/) do
  @preferences_page = @page.preferences
  expect(@preferences_page.get_heading).to eql('Your Preferences')
end

When(/^I enter following details in your preferences page$/) do |table|
  table.hashes.each do |hash|
    @preferences_page.interested_tariff(hash['interested_tariff'])
    @preferences_page.interested_payment_type(hash['payment_mode']) if hash['payment_mode']
    @preferences_page.enter_user_email(hash['email_id'])
    @preferences_page.select_agree_terms(hash['agree_terms'])
  end
end

When(/^I click on prices button$/) do
  @preferences_page.go_to_prices_page
end