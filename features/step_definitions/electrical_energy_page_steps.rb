When(/^I should be in Electricity Energy page$/) do
  @electricity_page = @page.electrical_energy
  expect(@electricity_page.get_heading).to eql('Electricity')
end

When(/^I enter following details in electricity energy page$/) do |table|
  table.hashes.each do |hash|
    @electricity_page.select_tariff_type(hash['current_tarrif'])
    @electricity_page.economy7_meter(hash['economy_7'])
    @electricity_page.select_payment_method(hash['payment_method'])
    @electricity_page.select_main_heating_source(hash['main_heating_source'])
    if hash['usage'] == 'kwh'
      @electricity_page.current_usage_in_kwh(hash['day_spend'],hash['day_spend_period'],hash['night_spend'])
    else
      @electricity_page.current_usage_in_amount(hash['amt_spend'],hash['amt_spend_period'])
    end
  end
end

When(/^I click on next page button in electricity page$/) do
  @electricity_page.go_to_next_page
end