class RestaurantBill
  attr_reader :ordered_items

  def initialize
    @ordered_items = []
  end

  def order_item(item, cost)
    @ordered_items << [item, cost]
  end

  def total
    @total = 0
    @ordered_items.each do |line|
      @total += line[1]
    end
    @tax = @total * (0.098)
    @total_tax = @total + @tax
  end

  # def tipping(amount)
  #   @total_tip = @total_tax + amount
  #   return @total_tip
  # end

end
