require 'rspec'
require_relative 'shopping_cart'

RSpec.describe ShoppingCart do
  let(:laptop) { Product.new("Laptop", 1000, 2, 'electronic') }
  let(:t_shirt) { Product.new("T-Shirt", 20, 5, 'clothing') }
  let(:cart) { ShoppingCart.new }

  describe '#add_item' do
    it 'adds an item to the cart' do
      cart.add_item(laptop)
      expect(cart.calculate_total_price).to eq(1800.0) # 10% discount applied
    end
  end

  describe '#remove_item' do
    it 'removes an item from the cart' do
      cart.add_item(laptop)
      cart.remove_item(laptop)
      expect(cart.calculate_total_price).to eq(0.0) # Cart is empty
    end
  end

  describe '#calculate_total_price' do
    context 'with both discounts' do
      it 'applies discounts correctly for both electronics and clothing' do
        cart.add_item(laptop)
        cart.add_item(t_shirt)
        expect(cart.calculate_total_price).to eq(1895.0) # 10% off Laptop + 5% off T-Shirt
      end
    end

    context 'with only electronics' do
      it 'applies a 10% discount for electronics' do
        cart.add_item(laptop)
        expect(cart.calculate_total_price).to eq(1800.0) # 10% off Laptop
      end
    end

    context 'with only clothing' do
      it 'applies a 5% discount for clothing' do
        cart.add_item(t_shirt)
        expect(cart.calculate_total_price).to eq(95.0) # 5% off T-Shirt
      end
    end

    context 'without discounts' do
      it 'calculates the raw total price correctly before applying discounts' do
        cart.add_item(laptop)
        cart.add_item(t_shirt)
        raw_total_price = laptop.total_price + t_shirt.total_price
        expect(raw_total_price).to eq(2100.0) # Total price without discounts
      end
    end
  end
end
