require"pry"
class CashRegister
    attr_accessor :total, :discount, :last_purchase, :items
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title,price,quantity=1)
        self.last_purchase = price * quantity
        self.total += last_purchase
        quantity.times do
        self.items<<title
        end
       
    end
    def apply_discount
        discount_percentage = self.total * self.discount / 100
        if self.discount != 0
        self.total -= discount_percentage
        "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

   def void_last_transaction
    self.total -= self.last_purchase
   end

end
