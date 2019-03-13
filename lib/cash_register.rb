class CashRegister
  attr_accessor :total, :employee_discount

  def initialize(total = 0, employee_discount = 0)
    @total = total
    @employee_discount = employee_discount
  end
end
