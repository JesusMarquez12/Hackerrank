#!/usr/bin/env python3

# https://www.hackerrank.com/challenges/30-abstract-classes

class Difference:                        #*
    def __init__(self, a):               #*
        self.__elements = a              #*

    #* Add your code here
    
    def computeDifference(self):
        min_val = min(self.__elements)
        max_val = max(self.__elements)
        self.maximumDifference = abs(max_val - min_val)

#* End of Difference class

_ = input()                              #*
a = [int(e) for e in input().split(' ')] #*

d = Difference(a)                        #*
d.computeDifference()                    #*

print(d.maximumDifference)               #*