#!/bin/ruby

# https://www.hackerrank.com/challenges/30-data-types

i = 4             #*
d = 4.0           #*
s = 'HackerRank ' #*

#* Declare second integer, double, and String variables.
#* Read and save an integer, double, and String to your variables.
i2 = gets.chomp.to_i
d2 = gets.chomp.to_f 
s2 = gets.chomp

#* Print the sum of both integer variables on a new line.
puts i + i2

#* Print the sum of the double variables on a new line.
puts d + d2

#* Concatenate and print the String variables on a new line
#* The 's' variable above should be printed first.
puts s + s2