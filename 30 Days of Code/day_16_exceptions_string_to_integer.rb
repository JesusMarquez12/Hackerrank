#!/bin/ruby

# https://www.hackerrank.com/challenges/30-exceptions-string-to-integer

require 'json'     #*
require 'stringio' #*



S = gets.chomp     #*

begin
  i = Integer(S)
  puts i
rescue ArgumentError
  puts "Bad String"
end