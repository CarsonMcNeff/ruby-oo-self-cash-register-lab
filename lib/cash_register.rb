class CashRegister
    attr_accessor :discount,:total,:prev_price,:items
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title,price,quantity = 1)
        self.total += price*quantity
        for i in 1..quantity 
            items << title
        end
        @prev_price = price*quantity
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
            self.total = self.total * (100-discount)/100
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total -= prev_price
    end
end
