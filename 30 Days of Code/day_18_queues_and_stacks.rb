#!/bin/ruby

# https://www.hackerrank.com/challenges/30-queues-stacks

#* create the Solution class
class Solution                                            #*
  #* complete the code
  attr :queue, :stack
  
  def initialize
    @queue = Array.new
    @stack = Array.new
  end
  
  def push_character(ch)
    add_character(stack, ch)
  end
  
  def pop_character
    stack.pop
  end
  
  def enqueue_character(ch)
    add_character(queue, ch)
  end
  
  def dequeue_character
    queue.shift
  end
  
  private
  
  def add_character(array, ch)
    array.push(ch)
  end
end                                                       #*


#* create Solution class object
solution = Solution.new                                   #*

#* read the input
input = gets                                              #*

input.split('').each do |c|                               #*
  #* push the character to stack
  solution.push_character c                               #*
  
  #* enqueue the character to queue
  solution.enqueue_character c                            #*
end                                                       #*

#* check if input string is palindrome or not
is_palindrome = true                                      #*

(input.length / 2).times do                               #*
  if solution.pop_character != solution.dequeue_character #*
      is_palindrome = false                               #*
      break                                               #*
  end                                                     #*
end                                                       #*

#* print if string is palindrome or not
if is_palindrome                                          #*
  puts "The word, #{input}, is a palindrome."             #*
else                                                      #*
  puts "The word, #{input}, is not a palindrome."         #*
end                                                       #*