class BankAccount

  def initialize
    @balance = 0
    @open = nil
  end

  def open 
    raise ArgumentError, "You can't open an already open account" if @open == true
    @open = true
  end

  def close
    raise ArgumentError, "You can't close an already closed account" if @open != true
    @open = false
    @balance = 0
  end

  def deposit(deposit)
    raise ArgumentError, "You can't deposit money into a closed account" if @open != true
    raise ArgumentError, "You can't deposit a negative amount" if deposit < 0
    @balance += deposit
  end

  def withdraw(withdraw)
    raise ArgumentError, "You can't withdraw money into a closed account" if @open == false || (@balance - withdraw) < 0 
    raise ArgumentError, "You can't withdraw a negative amount" if withdraw < 0 
    @balance -= withdraw
  end

  def balance
    raise ArgumentError, "You can't check the balance of a closed account" if @open == false
    @balance
  end
end
bank_account = BankAccount.new
bank_account.open
bank_account.deposit(100)
bank_account.deposit(110)
bank_account.withdraw(200)
bank_account.deposit(60)
bank_account.withdraw(50)

puts bank_account.balance