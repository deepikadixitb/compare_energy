module CompareEnergy
  class YourElectricity < SitePrism::Page
    def initialize
      wait_for_heading
    end

    def get_heading
      heading.text
    end

    def select_tariff_type(value)
      tariff_type.select(value)
    end

    def economy7_meter(value)
      if value == "yes"
        economy_7.click
      else
        no_economy_7.click
      end
    end

    def select_payment_method(value)
      payment_method.select(value)
    end

    def select_main_heating_source(value)
      if value == "yes"
        main_heating_source.click
      else
        not_main_heating_source.click
      end
    end

    def current_usage_in_kwh(day_spend,day_spend_period,night_spend)
      kwh_usage.click
      spent_during_day.set day_spend
      spent_during_day_period.select(day_spend_period)
      spent_during_night.set night_spend
    end

    def current_usage_in_amount(amt_spend,amt_spend_period)
      amount_usage.click
      amount_spend.set amt_spend
      amount_spend_period.select(amt_spend_period)
    end

    def go_to_next_page
      next_page.click
    end

    def go_to_back_page
      back_page.click
    end

    private
    element :heading, "section:not(.ng-hide) h2.main-heading"

    element :tariff_type, "select[id='electricity-tariff-additional-info']"

    element :economy_7, "label[for='economy-7-yes']"
    element :no_economy_7, "label[for='economy-7-no']"

    element :payment_method, "select[id='electricity-payment-method-dropdown-link']"

    element :main_heating_source, "label[for='electricity-main-heating-yes']"
    element :not_main_heating_source, "label[for='electricity-main-heating-no']"

    element :kwh_usage, "label[for='kwhSpend']"
    element :spent_during_day, "#economy-7-day-usage"
    element :spent_during_day_period, "select[id='economy-7-day-usage-dropdown']"
    element :spent_during_night, "#economy-7-night-usage"

    element :amount_usage, "label[for='poundSpend']"
    element :amount_spend, "#electricity-spend"
    element :amount_spend_period, "select[id='electricity-spend-dropdown']"

    element :bill_day, "div.date-picker"

    element :back_page, "#go-back"
    element :next_page, "#goto-your-energy"
  end

end