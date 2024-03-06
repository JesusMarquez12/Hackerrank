#!/bin/ruby

# https://www.hackerrank.com/challenges/30-regex-patterns

require 'json'                               #*
require 'stringio'                           #*



N = gets.strip.to_i                          #*

name_list = []
email_regex = %r{\b\w{1,40}@gmail.com$}

N.times do |n_itr|                           #*
    first_multiple_input = gets.rstrip.split #*

    firstName = first_multiple_input[0]      #*

    emailID = first_multiple_input[1]        #*
    
    name_list << firstName if email_regex.match?(emailID)
end                                          #*

name_list.sort!

puts name_list