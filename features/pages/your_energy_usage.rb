module CompareEnergy
  class YourEnergyUsage < SitePrism::Page

    def initialize
      wait_for_heading
    end

    def get_heading
      heading.text
    end

    def select_home_size(beds)
      case beds
        when "1-2"
          one_two_beds.click
        when "3-4"
          three_four_beds.click
        when "5+"
          five_plus_beds.click
      end
    end

    def select_occupants(count)
      case count
        when "1-2"
          one_two_occupants.click
        when "3-4"
          three_four_occupants.click
        when "5+"
          five_plus_occupants.clcik
      end
    end

    def select_main_heating_source(source_name)
      case source_name
        when "gas"
          gas_heating.click
        when "electricity"
          elec_heating.click
        when "others"
          other_heating.clcik
      end
    end

    def select_required_home_temperature(temperature)
      case temperature
        when "Arctic"
          arctic_temp.click
        when "Temperate"
          temperate_temp.click
        when "Tropical"
          tropical_temp.clcik
      end
    end

    def select_home_insulation(insulation)
      case insulation
        when "Wafer thin"
          wafer_thin_insulation.click
        when "Well wrapped"
          well_wrapped_insulation.click
        when "Airtight"
          airtight_insulation.clcik
      end
    end

    def select_main_cooking_energy_source(cooking_source)
      case cooking_source
        when "Gas"
          gas_cooking.click
        when "Electricity"
          elec_cooking.click
        when "Other"
          other_cooking.clcik
      end
    end

    def select_visitors_frequency(frequency)
      case frequency
        when "Hardly ever"
          gas_cooking.click
        when "Evening and weekends"
          elec_cooking.click
        when "Most of the time  "
          other_cooking.clcik
      end
    end

    def go_to_next_page
      next_page.click
    end

    def go_to_back_page
      back_page.click
    end

    private
    element :heading, "h2.main-heading"

    element :one_two_beds, "label[for='one-two-bedroom']"
    element :three_four_beds, "label[for='three-four-bedroom']"
    element :five_plus_beds, "label[for='five-plus-bedroom']"

    element :one_two_occupants, "label[for='one-two-occupants']"
    element :three_four_occupants, "label[for='three-four-occupants']"
    element :five_plus_occupants, "label[for='five-plus-occupants']"

    element :gas_heating, "label[for='gas-heat']"
    element :elec_heating, "label[for='electricity-heat']"
    element :other_heating, "label[for='other-heat']"

    element :arctic_temp, "label[for='arctic']"
    element :temperate_temp, "label[for='temperate']"
    element :tropical_temp, "label[for='tropical']"

    element :wafer_thin_insulation, "label[for='wafer-thin']"
    element :well_wrapped_insulation, "label[for='well-wrapped']"
    element :airtight_insulation, "label[for='airtight']"

    element :gas_cooking, "label[for='gas-cooking']"
    element :elec_cooking, "label[for='electricity-cooking']"
    element :other_cooking, "label[for='other-cooking']"


    element :hardly_occupied, "label[for='hardly-ever']"
    element :evenings_weekends_occupied, "label[for='evenings-weekends']"
    element :mostly_occupied, "label[for='most-time']"

    element :back_page, "#go-back"
    element :next_page, "#goto-person-details-button"
  end

end
