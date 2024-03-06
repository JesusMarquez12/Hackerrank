#!/bin/ruby

# https://www.hackerrank.com/challenges/30-binary-numbers

require 'json'      #*
require 'stringio'  #*



n = gets.strip.to_i #*
bin_n = n.to_s(2)

consecutive_one = 0
max_consecutive_one = 0
bin_n.each_char do |bit|
    case bit
    when '0'
        max_consecutive_one = consecutive_one if consecutive_one > max_consecutive_one
        
        consecutive_one = 0
    when '1'
        consecutive_one += 1
    end
end
max_consecutive_one = consecutive_one if consecutive_one > max_consecutive_one

puts max_consecutive_one
