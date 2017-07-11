module CompareEnergy
  class YourSupplier < SitePrism::Page
    set_url "https://energy.comparethemarket.com/energy/v2/?AFFCLIE=TSTT"

    def search_post_code(postcodeValue)
      postcode.set postcodeValue
      find_postcode.click
    end

    def have_bill_handy(value)
      if value == "yes"
        have_bill.click
      else
        not_have_bill.click
      end
    end

    def compare(value)
      case value
        when "Gas & Electricity"
          compare_gas_electricity.click
        when "Electricity only"
          compare_electricity.click
        when "Gas only"
          compare_gas.click
      end
    end

    def same_supplier(value)
      if value == "yes"
        same_electricity_gas_supplier.click
      else
        different_electricity_gas_supplier.click
      end
    end

    def select_electricity_provider(provider_name)
      case provider_name
        when "British Gas"
          elec_british_gas.click
        when "EDF Energy"
          elec_edf_energy.click
        when "E.ON"
          elec_eon.click
        when "npower"
          elec_npower.click
        when "Scottish Power"
          elec_scottish_power.click
        when "SSE"
          elec_sse.click
        when "I don't know"
          dont_know_electricity_supplier.click
        else
          elec_other_options.select(provider_name)
      end
    end

    def select_gas_provider(provider_name)
      case provider_name
        when "British Gas"
          gas_british_gas.click
        when "EDF Energy"
          gas_edf_energy.click
        when "E.ON"
          gas_eon.click
        when "npower"
          gas_npower.click
        when "Scottish Power"
          gas_scottish_power.click
        when "SSE"
          gas_sse.click
        when "I don't know"
          dont_know_gas_supplier.click
        else
          gas_other_options.select(provider_name)
      end
    end

    def go_to_next_page
      next_page.click
    end

    private
    element :postcode, "#your-postcode"
    element :find_postcode, "#find-postcode"

    element :have_bill, "#have-bill-label"
    element :not_have_bill, "#no-bill-label"

    element :compare_gas_electricity, "#compare-both-label"
    element :compare_gas, "#compare-gas-label"
    element :compare_electricity, "#compare-electricity-label"

    element :same_electricity_gas_supplier, "label[for='same-supplier-yes']"
    element :different_electricity_gas_supplier, "label[for='same-supplier-no']"

    element :elec_british_gas, "label[for='electricity-top-six-british-gas']"
    element :elec_edf_energy, "label[for='electricity-top-six-edf']"
    element :elec_eon, "label[for='electricity-top-six-eon']"
    element :elec_npower, "label[for='electricity-top-six-npower']"
    element :elec_scottish_power, "label[for='electricity-top-six-scottish-power']"
    element :elec_sse, "label[for='electricity-top-six-sse']"
    element :elec_other_options, "select[id='sel1']"
    element :dont_know_electricity_supplier, "label.electricity-supplier-dont-know"

    element :gas_british_gas, "label[for='gas-top-six-british-gas']"
    element :gas_edf_energy, "label[for='gas-top-six-edf']"
    element :gas_eon, "label[for='gas-top-six-eon']"
    element :gas_npower, "label[for='gas-top-six-npower']"
    element :gas_scottish_power, "label[for='gas-top-six-scottish-power']"
    element :gas_sse, "label[for='gas-top-six-sse']"
    element :gas_other_options, "select[id='sel2']"
    element :dont_know_gas_supplier, "label.gas-supplier-dont-know"

    element :next_page, "#goto-your-supplier-details"

  end
end

