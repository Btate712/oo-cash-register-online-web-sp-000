class CashRegister
  attr_accessor :total

  def initialize(total = 0, employee_discount = 0)
    @total = 0
  end
end
