class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0, total = 0)
    @total = total
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @items << item
  end

  def apply_discount
    if @discount != 0
      output_string =
        "After the discount, the total comes to $#{(@total *= (100-@discount).to_f/100).to_i}."
    else
      output_string = "There is no discount to apply."
    end
    output_string
  end
end
