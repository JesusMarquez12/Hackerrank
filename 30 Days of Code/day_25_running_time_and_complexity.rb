#!/bin/ruby

# https://www.hackerrank.com/challenges/30-running-time-and-complexity

#* Enter your code here. Read input from STDIN. Print output to STDOUT

i = gets.chomp.to_i
i.times do
  n = gets.chomp.to_i
  puts prime_number(n) ? "Prime" : "Not prime"
end

BEGIN{
  def prime_number(n)
    return false if n.zero? || (n==1)

    i = 2
    sqrt_n = Math.sqrt(n)
    until i > sqrt_n
      break if (n % i).zero?

      i += 1
    end
    
    i>sqrt_n
  end
}
