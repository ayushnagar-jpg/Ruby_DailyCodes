class Product
  attr_reader :name, :price, :quantity, :type
  def initialize(name, price, quantity, type)
    @name = name
    @price = price
    @quantity = quantity
    @type = type
  end
  def total_price
    @price * @quantity
  end
end
class ShoppingCart

  def initialize
    @items = []
  end

  def add_item(product)
    @items << product
  end

  def remove_item(product)
    @items.delete(product)
  end

  def calculate_total_price
    total_price = 0
    @items.each do |item|
      total_price += item.total_price
    end
    apply_discount(total_price)
  end

  def apply_discount(total_price)
    discounted_price = 0
    @items.each do |item|
      case item.type
      when 'electronic'
        discounted_price += item.total_price * 0.90 # 10% discount
      when 'clothing'
        discounted_price += item.total_price * 0.95 # 5% discount
      else
        discounted_price += item.total_price # No discount
      end
    end
    discounted_price
  end
end
