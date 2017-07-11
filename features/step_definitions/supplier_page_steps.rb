Given(/^I am on Compare Energy link in Compare market website$/) do
  @page = CompareEnergy::Page.new
  @energy_supplier_page = @page.supplier
  @energy_supplier_page.load
  expect(@energy_supplier_page).to be_displayed
end

When(/^I enter following details in supplier page$/) do |table|
  table.hashes.each do |hash|
    @energy_supplier_page.search_post_code(hash['postcode'])
    @energy_supplier_page.have_bill_handy(hash['have_bill'])
    @energy_supplier_page.compare(hash['compare'])
    @energy_supplier_page.same_supplier(hash['same_supplier']) if hash['same_supplier']
    @energy_supplier_page.select_electricity_provider(hash['elec_supplier'])
    @energy_supplier_page.select_gas_provider(hash['gas_supplier'])
  end
end

When(/^I go to next page$/) do
  @energy_supplier_page.go_to_next_page
end