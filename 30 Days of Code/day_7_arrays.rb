#!/bin/ruby

# https://www.hackerrank.com/challenges/30-arrays

require 'json'                      #*
require 'stringio'                  #*



n = gets.strip.to_i                 #*

arr = gets.rstrip.split.map(&:to_i) #*

arr.reverse!

puts arr.join(' ')