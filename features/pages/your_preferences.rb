module CompareEnergy
  class YourPreferences < SitePrism::Page
    def initialize
      wait_for_heading
    end

    def get_heading
      heading.text
    end

    def interested_tariff(value)
      case value
        when "Fixed tariff"
          fixed_tariff.click
        when "Variable tariff"
          variable_tariff.click
        when "All tariffs"
          all_tariff.click
      end
    end

    def interested_payment_type(value)
      case value
        when "Monthly direct debit"
          monthly_direct_debit.click
        when "Quarterly direct debit"
          quarterly_direct_debit.click
        when "Pay on receipt of bill"
          pay_on_receipt_bill.click
        when "All payment types"
          all_payment_types.click
      end
    end

    def enter_user_email(value)
      user_email_id.set value
    end

    def select_mareting_preference
      marketing_preference.click
    end

    def select_agree_terms(value)
      if value == "yes"
        agree_terms.click
      end
    end

    def go_to_prices_page
      go_to_prices.click
    end

    def go_to_back_page
      back_page.click
    end

    private
    element :heading, "main div div h2.main-heading"

    element :fixed_tariff, "label[for='pre-select-fixed']"
    element :variable_tariff, "label[for='pre-select-variable']"
    element :all_tariff, "label[for='pre-select-all']"

    element :monthly_direct_debit, "label[for='pre-select-payment-monthly']"
    element :quarterly_direct_debit, "label[for='pre-select-payment-quarterly']"
    element :pay_on_receipt_bill, "label[for='pre-select-payment-onbill']"
    element :all_payment_types, "label[for='pre-select-payment-all']"

    element :user_email_id, "#Email"

    element :marketing_preference, "label[for='marketingPreference']"
    element :agree_terms, "label[for='terms']"

    element :go_to_prices, "#email-submit"

    element :back_page, "#go-back"
  end

end
