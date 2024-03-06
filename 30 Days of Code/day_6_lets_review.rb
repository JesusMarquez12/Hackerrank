#!/bin/ruby

# https://www.hackerrank.com/challenges/30-review-loop

#* Enter your code here. Read input from STDIN. Print output to STDOUT

t = gets.chomp.to_i
test_cases = []
for i in (1..t)
  test_cases << gets.chomp
end

test_cases.each do |s|
  odd = []
  even = []

  s.split("").each_with_index do |value, index|
    if index % 2 == 0
      even << value
    else
      odd << value
    end
  end

  puts "#{even.join} #{odd.join}"
end
