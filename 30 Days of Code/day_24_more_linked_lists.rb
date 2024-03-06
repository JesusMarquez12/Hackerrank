#!/bin/ruby

# https://www.hackerrank.com/challenges/30-linked-list-deletion

class Node                            #*

  attr_accessor :data,:next           #*

def initialize data                   #*
      @data = data                    #*
      @next = nil                     #*
  end                                 #*
end                                   #*

class Solution                        #*

  def removeDuplicates(head)          #*
    #* write your code here
    return head if head.nil? || head.next.nil?
    
    values = [head.data]
    last_unique_node = head
    actual_node = head.next
    
    until actual_node.nil?
      if values.include?(actual_node.data)
        actual_node = actual_node.next
        next
      end
      
      values.append(actual_node.data)
      last_unique_node.next = actual_node
      last_unique_node = actual_node
      actual_node = actual_node.next
    end
    
    last_unique_node.next = nil

    return head
  end                                 #*

  def insert(head,value)              #*
    p=Node.new(value)                 #*
    if head==nil                      #*
      head=p                          #*
    elsif head.next==nil              #*
      head.next=p                     #*
    else                              #*
      current = head                  #*
      while current.next != nil       #*
        current = current.next        #*
      end                             #*
      current.next = p                #*
    end                               #*
    return head                       #*
  end                                 #*

  def display(head)                   #*
    current = head                    #*
    while current                     #*
      print current.data," "          #*
      current = current.next          #*
    end                               #*
  end                                 #*
end                                   #*

mylist= Solution.new                  #*
head=nil                              #*
T=gets.to_i                           #*
for i in 1..T                         #*
  data=gets.to_i                      #*
  head=mylist.insert(head,data)       #*
end                                   #*
head=mylist.removeDuplicates(head)    #*
mylist.display(head)                  #*