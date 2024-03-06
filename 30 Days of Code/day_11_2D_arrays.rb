#!/bin/ruby

# https://www.hackerrank.com/challenges/30-2d-arrays

require 'json'                             #*
require 'stringio'                         #*



arr = Array.new(6)                         #*

6.times do |i|                             #*
    arr[i] = gets.rstrip.split.map(&:to_i) #*
end                                        #*

max_hourglass_sum = -99
for i in 1..4 # row
    for j in 1..4 # column
        hourglass_values = [arr[i-1][j-1], arr[i-1][j], arr[i-1][j+1],
                            arr[i][j],
                            arr[i+1][j-1], arr[i+1][j], arr[i+1][j+1]]
        hourglass = Hourglass.new(hourglass_values)
        sum = hourglass.sum
        max_hourglass_sum = sum if sum > max_hourglass_sum
    end
end

print max_hourglass_sum

BEGIN {
    class Hourglass
        attr :elements
        
        HOURGLASS_ELEMENTS = 7
        HOURGLASS_INDEX = %i[a b c d e f g]
        
        def initialize(elements)
            @elements = {}
            HOURGLASS_ELEMENTS.times do |i|
                @elements[HOURGLASS_INDEX[i]] = elements[i]
            end
        end
        
        def print
            puts "#{elements[:a]}"+"#{elements[:b]}"+"#{elements[:c]}"
            puts "\s"+"#{elements[:d]}"+"\s"
            puts "#{elements[:e]}"+"#{elements[:f]}"+"#{elements[:g]}"
        end
 
        def sum
            elements.values.sum
        end
    end
}