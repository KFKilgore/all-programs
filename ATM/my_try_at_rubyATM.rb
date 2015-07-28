# puts "Enter your grade."
# grade = gets.chomp.upcase
# until grade=='X'

# case grade
# when 'A'
# puts "Good Job!"
# when 'B'
# puts "Not Bad"
# when 'C'
# puts "Try Harder"
# else 
#     puts "That's no grade."
# end
# puts "Enter another grade."
# puts "Type 'X' to quit."
# grade = gets.chomp.upcase
# end

def atm_action(balance, action)
 # your code goes here - remember to try the case statement!
end

puts "Hello! What's your name?"
name = gets.chomp

puts "Welcome to the Ruby ATM.  Please enter your initial deposit:"
balance = gets.chomp.to_f

action = ""
while action != 'exit'
  puts " "
  puts "Please enter your selection:"
  puts "  * Enter 1 for withdrawals "
  puts "  * Enter 2 for deposits "
  puts "  * Enter 3 to check your balance "
  puts "  * Enter exit to leave the Ruby ATM "


action = gets.chomp.downcase
case action
when action = '1'
puts "Amount to withdraw: "
when action = '2'
puts "Deposit amount: "
when action = '3'
puts "Your balance is now: "
else 
    puts "Not a valid entry."
end
#  balance = atm_action(balance, action)
 # puts "Transaction complete."
end