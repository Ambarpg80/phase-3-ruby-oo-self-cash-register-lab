
class CashRegister
    attr_accessor  :discount, :total, :items, :purchased_item
    # attr_reader 

    def initialize(discount = 0)
       @total = 0 
       @discount = discount
       @items = []
    end

    def add_item(title, price, qty = 1)
        @purchased_item = (price * qty)
        @total = (total + @purchased_item)
        return qty.times {self.items.push(title)} 
    end

    def apply_discount
       deduction= (self.total * (self.discount/100.0)).to_i
        if self.discount != 0
         @total =  self.total - deduction
         return "After the discount, the total comes to $#{total}."
        else
        return "There is no discount to apply."
      end
    end
    
     def void_last_transaction
     @total = self.total - self.purchased_item
    end
     





end

