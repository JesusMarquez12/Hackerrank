#!/bin/ruby

# https://www.hackerrank.com/challenges/30-bitwise-and

require 'json'                                              #*
require 'stringio'                                          #*

#*
#* Complete the 'bitwiseAnd' function below.
#*
#* The function is expected to return an INTEGER.
#* The function accepts following parameters:
#*  1. INTEGER N
#*  2. INTEGER K
#*

def bitwiseAnd(nn, kk)                                      #*
    #* Write your code here
    max_value = nil
    (kk-1).downto(1) do |n|
        for i in (1...nn) do
            and_array = Array((i+1)..nn).map { |a| a & i }
            next unless and_array.include?(n)

            max_value = n
            break
        end
        
        break unless max_value.nil?
    end
    
    max_value.to_i
end                                                         #*

fptr = File.open(ENV['OUTPUT_PATH'], 'w')                   #*

t = gets.strip.to_i                                         #*

t.times do |t_itr|                                          #*
    first_multiple_input = gets.rstrip.split                #*

    count = first_multiple_input[0].to_i                    #*

    lim = first_multiple_input[1].to_i                      #*

    res = bitwiseAnd count, lim                             #*

    fptr.write res                                          #*
    fptr.write "\n"                                         #*
end                                                         #*

fptr.close()                                                #*
