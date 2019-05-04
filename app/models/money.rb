class Money
  def initialize

  end

  def dollars(value)
    value / 100
  end

  def convert_to_cents(value)
    amount = value.gsub(/\./,'').to_i

    cents = amount * 100
  end

  def convert_to_dollars(cents)
    amount = cents / 100
  end
end
