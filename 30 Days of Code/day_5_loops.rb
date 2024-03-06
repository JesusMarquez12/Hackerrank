#!/bin/ruby

# https://www.hackerrank.com/challenges/30-loops

require 'json'      #* 
require 'stringio'  #*



n = gets.strip.to_i #*

for i in 1..10 do puts "#{n} x #{i} = #{n*i}" end