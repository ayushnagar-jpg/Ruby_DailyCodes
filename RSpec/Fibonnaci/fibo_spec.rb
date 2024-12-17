require 'rspec'
require_relative 'fibo'


RSpec.describe "#fibonacci" do
  it "returns the first n Fibonacci numbers" do
    expect(fibonacci(5)).to eq([0, 1, 1, 2, 3])
  end

  it "returns an empty array for n = 0" do
    expect(fibonacci(0)).to eq([])
  end

  it "returns [0] for n = 1" do
    expect(fibonacci(1)).to eq([0])
  end
end