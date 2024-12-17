require 'rspec'
require_relative 'BankAccount.rb'

RSpec.describe BankAccount do
  let(:bank_account) {BankAccount.new("Ayush", 5000)}
  describe '#deposit' do
    it 'update balance after depositing money' do
      expect(bank_account.deposit(1000)).to eq(6000) 
    end
  end
  describe '#withdraw' do
    it 'update balance after withdrawing money' do
      expect(bank_account.withdraw(2000)).to eq(3000)
    end
  end
end