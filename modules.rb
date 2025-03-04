puts "MODULES"

module SavingsAccount

	def self.interest_rate(balance)
		case
		when balance < 0
			3.213
		when balance > 0 && balance <= 1000
		 0.5
		when balance >= 1000 && balance < 5000
			1.621
		when balance > 5000
			2.475
		end
	end

	def self.annual_balance_update(balance)
		balance + (balance * (interest_rate(balance)/100))
	end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      years += 1
      current_balance = annual_balance_update(current_balance)
    end
    years
  end
end

puts SavingsAccount.interest_rate(200)
puts SavingsAccount.annual_balance_update(200.75)
puts SavingsAccount.annual_balance_update(2003.75)
puts SavingsAccount.years_before_desired_balance(200.75, 214.88)

puts SavingsAccount.years_before_desired_balance(2_345.67, 12_345.678_9)


puts SavingsAccount.interest_rate(2000)
puts SavingsAccount.interest_rate(5_000.001)
puts 5_000.001