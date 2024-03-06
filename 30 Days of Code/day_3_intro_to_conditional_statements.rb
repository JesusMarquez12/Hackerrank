#!/bin/ruby

# https://www.hackerrank.com/challenges/30-conditional-statements

require 'json'      #*
require 'stringio'  #*



N = gets.strip.to_i #*

if N%2 == 1
  puts "Weird" 
else
  case N
  when 2..5
    puts "Not Weird"
  when 6..20
    puts "Weird"
  when 20..100
    puts "Not Weird"
  else
    puts "Error: #{N}"
  end
end