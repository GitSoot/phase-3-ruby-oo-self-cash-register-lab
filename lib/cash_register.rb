class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction_amount
  
  def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
  end
  
  def add_item(title, price, quantity = 1)
  self.total += price * quantity
  quantity.times { items << title }
  self.last_transaction_amount = price * quantity
  end
  
  def apply_discount
  if discount > 0
  self.total = (total * ((100.0 - discount.to_f)/100)).to_i
  "After the discount, the total comes to $#{self.total}."
  else
  "There is no discount to apply."
  end
  end
  
  def void_last_transaction
  self.total = self.total - self.last_transaction_amount
  end
  
  end