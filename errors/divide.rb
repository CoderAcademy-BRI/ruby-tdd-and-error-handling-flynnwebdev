# This is a simple divider.
# Imagine the user tries to divide by zero
# Ruby will rightfully freak out and crash with a ZeroDivisionError
# Let's bring in some error handling to display a nice message.
#

class String
    def is_i?
       /\A[-+]?\d+\z/ === self
    end
end

class Counter
    def initialize
        @count = 0
    end
    def inc
        @count += 1
        @count
    end
end

class NonIntegerError < StandardError
end

def divide (dividend,divisor)
    raise NonIntegerError if !(dividend.is_i? && divisor.is_i?)
    dividend.to_i / divisor.to_i
end

tries = Counter.new
puts "--------------------"
puts "--- Division App ---"
puts "--------------------"
begin
    puts "Give me an integer"
    number1 = gets.chomp
    puts "Give me another integer"
    number2 = gets.chomp
    answer = divide(number1,number2)
    print "#{number1} divided by #{number2} = "
    print "#{answer || "error"}"
    puts
rescue ZeroDivisionError
    puts "You cannot divide by zero!"
    retry if tries.inc < 3
rescue NonIntegerError
    puts "You can only divide integers!"
    retry if tries.inc < 3
rescue StandardError => e
    puts "An unexpected error occured: #{e.message}"
end
#
# Code along challenge: if they hit an error, take them back to "give me a number"