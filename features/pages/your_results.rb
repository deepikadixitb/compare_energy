module CompareEnergy
  class YourResults < SitePrism::Page

    def initialize
      wait_for_cheapest_result_box(10)
    end

    def get_current_tariff_heading
      current_tariff_heading.text
    end

    def get_heading
      results_heading.text
    end

    def get_cheapest_result_box
      cheapest_result_box.find("header").text
    end

    def get_cheapest_tariff_name
      cheapest_result_box.find("div.pps-relevancy-tariff-name").text
    end

    def get_cheapest_tariff_savings
      cheapest_result_box.find("div.pps-relevancy-card-inner div.pps-relevancy-saving-amount").text
    end

    def get_cheapest_tariff_estimated_annual_bill
      cheapest_result_box.all("div.pps-relevancy-card-inner>div")[1].find("strong").text
    end

    def get_first_result_row_tariff_name
      result_rows[0].find("td.supplier").text
    end

    def get_first_result_row_tariff_savings
      result_rows[0].find("td.annual-saving strong.annual-saving-amount").text
    end
    def get_first_result_row_tariff_estimated_annual_bill
      result_rows[0].find("td.annual-saving div.estimated-annual-bill strong").text
    end

    private
    element :current_tariff_heading, "section.personal-projection h2"

    element :cheapest_result_box, "#relevancy-panel"

    element :results_heading, "section.your-results-with-filters h2"

    element :results_table, "table.price-table"

    elements :result_rows, "table.price-table tbody"

  end
end
