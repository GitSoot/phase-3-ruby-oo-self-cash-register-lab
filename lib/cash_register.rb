class CashRegister
    attr_accessor :total
  
    def initialize(discount = nil)
      @discount = discount
      @total = 0
      @items = []
    end
  
    def add_item(title, price, quantity = 1)
      @total += price * quantity
      quantity.times { @items << title }
    end
  
    def apply_discount
      return "There is no discount to apply." unless @discount
  
      @total *= (100 - @discount) / 100.0
      "After the discount, the total comes to $#{@total.round(2)}."
    end
  
    def items
      @items
    end
  
    def void_last_transaction
      @total -= @items.pop.size * @total / @items.size
    end
  end
  
