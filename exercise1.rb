class BankAccount
  def initialize(balance,interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(ammount)
    @balance = @balance + ammount
  end

  def withdraw(ammount)
    @balance = @balance - ammount
  end

  def gain_interest
    @balance = @balance + (@balance * @interest_rate)
  end
end
