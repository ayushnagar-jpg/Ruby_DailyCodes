require 'rspec'
require_relative 'calculator.rb'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  describe '#add' do
    it 'adds two numbers correctly' do
      expect(calculator.add(5, 3)).to eq(8)
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers correctly' do
      expect(calculator.subtract(10, 4)).to eq(6)
    end
  end

  describe '#multiply' do
    it 'multiplies two numbers correctly' do
      expect(calculator.multiply(6, 7)).to eq(42)
    end
  end

  describe '#divide' do
    it 'divides two numbers correctly' do
      expect(calculator.divide(20, 4)).to eq(5)
    end
  end
end