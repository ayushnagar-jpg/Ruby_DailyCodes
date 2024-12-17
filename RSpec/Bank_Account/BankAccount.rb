#Develop a test suite using RSpec for a Ruby class BankAccount with methods to deposit, 
#withdraw, and check_balance. Ensure that withdrawing more than the available balance raises an appropriate error.

class BankAccount
  def initialize(owner, balance)
    @owner = owner
    @balance = balance
  end
  def checkBalance
    @balance
  end
  def deposit(amount)
    raise ArgumentError, "Deposit amount must be positive" if amount <= 0
    @balance += amount
    puts "Amount of #{amount} deposited successfully. New balance is: #{@balance}"
    @balance
  end

  def withdraw(amount)
    raise ArgumentError, "Withdrawal amount must be positive" if amount <= 0
    
    if amount > @balance
      puts "Insufficient balance."
      return nil
    else
      @balance -= amount
      puts "Balance after withdrawal is: #{@balance}"
      @balance
    end
  end
end

