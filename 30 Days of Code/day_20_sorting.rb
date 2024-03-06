#!/bin/ruby

# https://www.hackerrank.com/challenges/30-sorting

require 'json'                    #*
require 'stringio'                #*



n = gets.strip.to_i               #*

a = gets.rstrip.split.map(&:to_i) #*

#* Write your code here

sorted_a, swaps = bubble_sort(a)

puts "Array is sorted in #{swaps} swaps."
puts "First Element: #{sorted_a.first}"
puts "Last Element: #{sorted_a.last}"


BEGIN{
  def bubble_sort(arr)
    arr_length = arr.length
    total_swaps = 0

    for i in 0...arr_length
      loop_swaps = 0
      for j in 0...(arr_length - i - 1)
        if arr[j] > arr[j + 1]
          arr[j], arr[j + 1] = arr[j + 1], arr[j]
          loop_swaps += 1
        end
      end
      
      break if loop_swaps.zero?

      total_swaps += loop_swaps
    end
    
    return arr, total_swaps
  end
}
