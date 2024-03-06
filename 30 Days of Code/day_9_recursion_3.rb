#!/bin/ruby

# https://www.hackerrank.com/challenges/30-recursion

require 'json'                            #*
require 'stringio'                        #*

#*
#* Complete the 'factorial' function below.
#*
#* The function is expected to return an INTEGER.
#* The function accepts INTEGER n as parameter.
#*

def factorial(n)                          #*
    #* Write your code here
    return 1 if n <= 1
    
    n * factorial(n-1)
end                                       #*

fptr = File.open(ENV['OUTPUT_PATH'], 'w') #*

n = gets.strip.to_i                       #*

result = factorial n                      #*

fptr.write result                         #*
fptr.write "\n"                           #*

fptr.close()                              #*