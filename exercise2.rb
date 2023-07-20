class BankAccount
  def initialize(account_number, name, balance)
    @account_number = account_number
    @name = name
    @balance = balance
  end

  def deposit(money)
    @balance += money
    p "Your current balance is: $#{@balance}"
  end

  def withdrawal(money)
    return p "You cannot withdraw because the balance is $0" if @balance == 0
    if @balance - (money + money * 0.05) < 0
      p "You cannot withdraw because the balance is not enough"
      p "Your current balance is: $#{@balance}"
    else
      @balance -= (money + money * 0.05)
      p "Your current balance is: $#{@balance}"
    end
  end

  def display
    p "Account number: #{@account_number}"
    p "Account name: #{@name}"
    p "Account balance: $#{@balance}"
  end
end

account = BankAccount.new(2178514584, "Albert" , 0)
account.withdrawal(300)
account.deposit(200)
account.withdrawal(200)
account.withdrawal(100)
p "================================================================"
account.display

# Output
# "You cannot withdraw because the balance is $0"
# "Your current balance is: $200"
# "You cannot withdraw because the balance is not enough"
# "Your current balance is: $200"
# "Your current balance is: $95.0"
# "================================================================"
# "Account number: 2178514584"
# "Account name: Albert"
# "Account balance: $95.0"