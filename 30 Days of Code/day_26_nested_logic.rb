#!/bin/ruby

# https://www.hackerrank.com/challenges/30-nested-logic

#* Enter your code here. Read input from STDIN. Print output to STDOUT
require 'date'

return_date_string = gets.chomp
due_date_string = gets.chomp

format = "%d %m %Y"

return_date = Date.strptime(return_date_string, format)
due_date = Date.strptime(due_date_string, format)

late_days = (return_date - due_date).to_i
late_months = return_date.month - due_date.month

due_month = (due_date - due_date.mday + 1).next_month
first_fine_limit = (due_month - due_date).to_i

due_year = (due_date - due_date.yday + 1).next_year
second_fine_limit = (due_year - due_date).to_i

case late_days
when ..0
  puts 0
when 0...first_fine_limit
  puts 15 * late_days
when first_fine_limit...second_fine_limit
  puts 500 * late_months
else
  puts 10000
end
