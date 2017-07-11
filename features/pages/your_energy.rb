module CompareEnergy
  class YourEnergy < SitePrism::Page

    def initialize
      wait_for_heading
    end

    def get_heading
      heading.text
    end

    def have_pre_payment_meter(value)
      if value == "yes"
        pre_payment_meter.click
      else
        no_pre_payment_meter.click
      end
    end

    def economy7_meter(value)
      if value == "yes"
        economy_7.click
      else
        no_economy_7.click
      end
    end

    def electricity_spend_details(spend,spend_period)
      if spend == "I don't know"
        dont_know_electricity_spend.click
      else
        electricity_spend.set spend
        electricity_spend_period.select(spend_period)
      end
    end

    def gas_spend_details(spend,spend_period)
      if spend == "I don't know"
        dont_know_gas_spend.click
      else
        gas_spend.set spend
        gas_spend_period.select(spend_period)
      end
    end

    def go_to_next_page
      next_page.click
    end

    def go_to_back_page
      back_page.click
    end

    private
    element :heading, "h1.main-heading"

    element :pre_payment_meter, "label[for='prepayment-yes']"
    element :no_pre_payment_meter, "label[for='prepayment-no']"

    element :economy_7, "label[for='economy-7-yes']"
    element :no_economy_7, "label[for='economy-7-no']"

    element :electricity_spend, "#electricity-current-spend"
    element :electricity_spend_period, "select[id='electricity-current-spend-period']"

    element :dont_know_electricity_spend, "#electricity-dont-know-check"

    element :gas_spend, "#gas-current-spend"
    element :gas_spend_period, "select[id='gas-current-spend-period']"

    element :dont_know_gas_spend, "#gas-dont-know-check"

    element :back_page, "#go-back"
    element :next_page, "#goto-your-energy"
  end
end