When(/^I should be in Energy page$/) do
  @energy_page = @page.energy
  expect(@energy_page.get_heading).to eql("Your Energy")
end

When(/^I enter following details in energy page$/) do |table|
  table.hashes.each do |hash|
    @energy_page.have_pre_payment_meter(hash['pre_payment_meter'])
    @energy_page.economy7_meter(hash['economy_7'])
    @energy_page.electricity_spend_details(hash['elec_spend'], hash['elec_spend_period'])
    @energy_page.gas_spend_details(hash['gas_spend'],hash['gas_spend_period'])
  end
end

When(/^I click on next page button in energy page$/) do
  @energy_page.go_to_next_page
end