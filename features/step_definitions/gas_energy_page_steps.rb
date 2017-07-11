When(/^I should be in Gas Energy page$/) do
  @gas_page = @page.gas_energy
  expect(@gas_page.heading.text).to eql('Gas')

end

When(/^I enter following details in gas energy page$/) do |table|
  table.hashes.each do |hash|
    @gas_page.select_tariff_type(hash['current_tarrif'])
    @gas_page.select_payment_method(hash['payment_method'])
    @gas_page.select_main_heating_source(hash['main_heating_source'])
    @gas_page.current_usage(hash['current_usage'],hash['spend'],hash['spend_period'])
  end
end

When(/^I click on next page button in gas page$/) do
  @gas_page.go_to_next_page
end