require 'pry'

class CashRegister
  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity = 1)
    @cart += [title] * quantity
    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      amount_off = @total * @discount / 100.0
      @total -= amount_off
      "After the discount, the total comes to $#{total.floor}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

end
