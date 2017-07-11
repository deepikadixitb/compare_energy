Then(/^I should be in Results page with heading "([^"]*)"$/) do |heading_name|
  @results_page = @page.results
  expect(@results_page.get_current_tariff_heading).to eql(heading_name)
end

And(/^I should get cheapest result box with heading "([^"]*)"$/) do |heading_name|
  expect(@results_page.get_cheapest_result_box).to eql(heading_name)
end

Then(/^I should get the best results table with heading "([^"]*)"$/) do |heading_name|
  expect(@results_page.get_heading).to eql(heading_name)
end

Then(/^the cheapest result box quote should be same as first quote in results table$/) do
  expect(@results_page.get_cheapest_tariff_name).to include(@results_page.get_first_result_row_tariff_name)
  expect(@results_page.get_cheapest_tariff_savings).to eql(@results_page.get_first_result_row_tariff_savings)
  expect(@results_page.get_cheapest_tariff_estimated_annual_bill).to eql(@results_page.get_first_result_row_tariff_estimated_annual_bill)
end
