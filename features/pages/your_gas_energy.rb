module CompareEnergy
  class YourGas < SitePrism::Page
    def initialize
      wait_for_heading
    end

    def get_heading
      heading.text
    end
    def select_tariff_type(value)
      tariff_type.select(value)
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

    def current_usage(usage_type,spend,spend_period)
      case usage_type
        when "kWh"
          kwh_usage.click
          kwh_spend.set spend
          kwh_spend_period.select(spend_period)
        when "£"
          amount_usage.click
          amount_spend.set spend
          amount_spend_period.select(spend_period)
      end
    end

    def go_to_next_page
      next_page.click
    end

    def go_to_back_page
      back_page.click
    end

    private
    element :heading, "section:not(.ng-hide) h2.main-heading"
    element :tariff_type, "select[id='gas-tariff-additional-info']"
    element :payment_method, "select[id='gas-payment-method-dropdown-link']"

    element :main_heating_source, "label[for='gas-main-heating-yes']"
    element :not_main_heating_source, "label[for='gas-main-heating-no']"

    element :kwh_usage, "label[for='kwhSpendG']"
    element :kwh_spend, "#gas-usage"
    element :kwh_spend_period, "select[id='type-of-Gas-bill-usage-dropdown']"

    element :amount_usage, "label[for='poundSpendG']"
    element :amount_spend, "#gas-spend"
    element :amount_spend_period, "select[id='type-of-Gas-bill-dropdown']"
    element :bill_day, "#gas-bill-day"

    element :back_page, "#go-back"
    element :next_page, "#goto-your-energy"
  end

end