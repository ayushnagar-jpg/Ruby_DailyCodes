require 'calculator'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  describe "#add" do
    it "adds two positive numbers" do
      expect(calculator.add(1, 2)).to eq(3)
    end

    it "adds a positive and a negative number" do
      expect(calculator.add(1, -2)).to eq(-1)
    end

    it "adds two negative numbers" do
      expect(calculator.add(-1, -2)).to eq(-3)
    end

    it "adds zero to a number" do
      expect(calculator.add(0, 5)).to eq(5)
    end
  end

  describe "#subtract" do
    it "subtracts two positive numbers" do
      expect(calculator.subtract(5, 3)).to eq(2)
    end

    it "subtracts a negative number from a positive number" do
      expect(calculator.subtract(3, -2)).to eq(5)
    end

    it "subtracts a positive number from a negative number" do
      expect(calculator.subtract(-3, 2)).to eq(-5)
    end

    it "subtracts zero from a number" do
      expect(calculator.subtract(5, 0)).to eq(5)
    end
  end

  describe "#multiply" do
    it "multiplies two positive numbers" do
      expect(calculator.multiply(2, 3)).to eq(6)
    end

    it "multiplies a positive and a negative number" do
      expect(calculator.multiply(2, -3)).to eq(-6)
    end

    it "multiplies two negative numbers" do
      expect(calculator.multiply(-2, -3)).to eq(6)
    end

    it "multiplies a number by zero" do
      expect(calculator.multiply(5, 0)).to eq(0)
    end
  end

  describe "#divide" do
    it "divides two positive numbers" do
      expect(calculator.divide(6, 2)).to eq(3.0)
    end

    it "divides a positive number by a negative number" do
      expect(calculator.divide(6, -2)).to eq(-3.0)
    end

    it "divides two negative numbers" do
      expect(calculator.divide(-6, -2)).to eq(3.0)
    end

    it "returns a float when dividing integers" do
      expect(calculator.divide(7, 3)).to eq(2.3333333333333335)
    end

    it "raises an error when dividing by zero" do
      expect { calculator.divide(1, 0) }.to raise_error(ZeroDivisionError, "Cannot divide by zero")
    end
  end
end
