class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0, total = 0)
    @total = total
    @discount = discount
    items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    @total *= (100-@discount).to_f/100
  end
end
