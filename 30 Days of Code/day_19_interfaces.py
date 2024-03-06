#!/usr/bin/env python3

# https://www.hackerrank.com/challenges/30-interfaces

class AdvancedArithmetic(object):                                    #*
    def divisorSum(n):                                               #*
        raise NotImplementedError                                    #*

class Calculator(AdvancedArithmetic):                                #*
    def divisor(self, n):
        divisors = {1, n}
        min_div, max_div = 1, n

        while min_div + 1 < max_div:
            min_div+=1
            if (n % min_div != 0):
                continue

            max_div = n//min_div
            divisors.add(min_div)
            divisors.add(max_div)

        return list(divisors)

    def divisorSum(self, n):                                         #*
        # pass                                                       #*
        divisors = self.divisor(n)
        return sum(divisors)

n = int(input())                                                     #*
my_calculator = Calculator()                                         #*
s = my_calculator.divisorSum(n)                                      #*
print("I implemented: " + type(my_calculator).__bases__[0].__name__) #*
print(s)                                                             #*