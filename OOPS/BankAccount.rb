class BankAccount
  def initialize(initial_balance)
    if initial_balance < 0
      raise ArgumentError, "Initial Account cannot be Negative"
    end
    @balance = initial_balance
  end
  
  def deposit(amount)
    if amount <= 0
      "Deposit must be greater than 0"
    else
      @balance += amount
      "Deposited: $#{amount}. #{display_balance}"
    end
  end

  def withdraw(amount)
    if amount <= 0
      "Withdraw amount must be greater than 0"
    elsif amount > @balance 
      "Insufficient Funds!! #{display_balance}"
    else  
      @balance -= amount
      "Withdrew $#{amount}. #{display_balance}"
    end
  end

  def display_balance
    "Your current balance is #{@balance}"
  end

  private
  attr_accessor :balance
  end

  my_account = BankAccount.new(1000) #inital balance

   #deposit
  puts my_account.deposit(500)  
  puts my_account.deposit(-100)

  #withdraw
  puts my_account.withdraw(200)  
  puts my_account.withdraw(2000)

  puts my_account.display_balance
