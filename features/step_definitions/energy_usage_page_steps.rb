When(/^I should be in energy usage page$/) do
  @energy_usage = @page.energy_usage
  expect(@energy_usage.get_heading).to eql('Your energy usage')
end

When(/^I enter following details in energy usage page$/) do |table|
  table.hashes.each do |hash|
    @energy_usage.select_home_size(hash['beds'])
    @energy_usage.select_occupants(hash['people'])
    @energy_usage.select_main_heating_source(hash['main_heating_source'])
    @energy_usage.select_required_home_temperature(hash['temperature'])
    @energy_usage.select_home_insulation(hash['insulation'])
    @energy_usage.select_main_cooking_energy_source(hash['main_cooking_source'])
    @energy_usage.select_visitors_frequency(hash['visitors'])
  end
end

When(/^I click on next page button in energy usage page$/) do
  @energy_usage.go_to_next_page
end
