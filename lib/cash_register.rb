require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :price, :quantity

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end

    def add_item(item, price, quantity = 1)
       @price = price 
       @quantity = quantity
       @total += @price * quantity
       if quantity > 1 
          counter = 0
          while counter < quantity
          @items << item
          counter += 1
          end
        else
          @items << item
        end
    end

    def apply_discount
        if discount > 0
            @amount_off = (price * discount)/100
            @total -= @amount_off
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @price * @quantity
        # binding.pry
    end

end
