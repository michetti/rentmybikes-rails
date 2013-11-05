module SubledgerHelper
  def format_amount(account, value)
    if value.value.class == Subledger::Domain::Zero
      "#{number_to_currency value.amount}".html_safe

    elsif account.normal_balance == value.value.class
      "<i class='icon-arrow-up'></i> #{number_to_currency value.amount}".html_safe

    else
      "<i class='icon-arrow-down'></i> #{number_to_currency value.amount}".html_safe
    end
  end
end
