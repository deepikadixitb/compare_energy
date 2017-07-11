Feature: As an end user of Compare Market
  I want to compare my energy bills
  so that I can get the best quotes and comparison results


 Scenario: Compare both Electricity and Gas bills when user have bill and suggest the best deal
    Given I am on Compare Energy link in Compare market website
    And I enter following details in supplier page
     |postcode|have_bill|compare          |same_supplier| elec_supplier|gas_supplier|
     |PE2 6YS |yes      |Gas & Electricity| no          |npower        |British Gas |
    And I go to next page
    And I should be in Electricity Energy page
    And I enter following details in electricity energy page
     |current_tarrif|economy_7|payment_method        |main_heating_source|usage |day_spend|day_spend_period|night_spend|
     |Juice         |yes      |Pay On Receipt Of Bill|yes                |kwh   |40       |Annually        |20         |
   And I click on next page button in electricity page
   And I should be in Gas Energy page
   And I enter following details in gas energy page
     |current_tarrif           |payment_method        |main_heating_source|current_usage|spend    |spend_period|
     |Fixed Price December 2017|Quarterly Direct Debit|no                 |kWh          |300      |Annually    |
   And I click on next page button in gas page
   And I should be in your preferences page
   And I enter following details in your preferences page
     |interested_tariff|payment_mode          |email_id   | agree_terms|
     |Fixed tariff     |Quarterly direct debit|foo@bar.com| yes        |
   And I click on prices button
   Then I should be in Results page with heading "Current tariff and usage"
   And I should get cheapest result box with heading "Cheapest"
   And I should get the best results table with heading "Your Results"
   And the cheapest result box quote should be same as first quote in results table



  Scenario: Compare both Electricity and Gas bills when user doesn't have bill and suggest the best deal
   Given I am on Compare Energy link in Compare market website
   And I enter following details in supplier page
     |postcode|have_bill|compare            | elec_supplier|gas_supplier|
     |PE2 6YS |no       |Gas & Electricity  |npower        |British Gas |
   And I go to next page
   And I should be in Energy page
   And I enter following details in energy page
     |pre_payment_meter|economy_7|elec_spend|elec_spend_period|gas_spend|gas_spend_period|
     | yes             |no       |120       | Quarterly       |300      |Annually        |
   And I click on next page button in energy page
   And I should be in your preferences page
   And I enter following details in your preferences page
     |interested_tariff|email_id   | agree_terms|
     |Fixed tariff     |foo@bar.com| yes        |
   And I click on prices button
   Then I should be in Results page with heading "Current tariff and usage"
   And I should get cheapest result box with heading "Cheapest"
   And I should get the best results table with heading "Your Results"
   And the cheapest result box quote should be same as first quote in results table




  Scenario: Compare both Electricity and Gas bills when user doesn't know much details and suggest the best deal
    Given I am on Compare Energy link in Compare market website
    And I enter following details in supplier page
      |postcode|have_bill|compare          | elec_supplier|gas_supplier|
      |PE2 6YS |no       |Gas & Electricity| I don't know |I don't know|
    And I go to next page
    And I should be in Energy page
    And I enter following details in energy page
      |pre_payment_meter|economy_7|elec_spend  |gas_spend     |
      | yes             |no       |I don't know| I don't know |
    And I click on next page button in energy page
    And I should be in energy usage page
    And I enter following details in energy usage page
      |beds|people|main_heating_source |temperature |insulation|main_cooking_source|visitors     |
      |1-2 |3-4   |electricity         | Temperate  |Wafer thin|Gas                |Hardly ever  |
    And I click on next page button in energy usage page
    And I should be in your preferences page
    And I enter following details in your preferences page
      |interested_tariff|email_id   | agree_terms|
      |Fixed tariff     |foo@bar.com| yes        |
    And I click on prices button
    Then I should be in Results page with heading "Current tariff and usage"
    And I should get cheapest result box with heading "Cheapest"
    And I should get the best results table with heading "Your Results"
    And the cheapest result box quote should be same as first quote in results table



