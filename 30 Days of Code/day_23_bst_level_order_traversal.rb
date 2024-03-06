#!/bin/ruby

# https://www.hackerrank.com/challenges/30-binary-trees

class Node                                     #*
  attr_accessor :left,:right,:data             #*
def initialize data                            #*
    @left=@right=nil                           #*
    @data=data                                 #*
  end                                          #*
end                                            #*
class Solution                                 #*
  def insert (root,data)                       #*
      if root==nil                             #*
          return Node.new(data)                #*
      else                                     #*
          if data<=root.data                   #*
              cur=self.insert(root.left,data)  #*
              root.left=cur                    #*
          else                                 #*
              cur=self.insert(root.right,data) #*
              root.right=cur                   #*
          end                                  #*
      end                                      #*
      return root                              #*
  end                                          #*

  def levelOrder(root)                         #*
    #* Write your code here
    return if root.nil?
    result_level_order = []
    queue = [root]
    
    until queue.empty?
      actual_node = queue.shift
      result_level_order.append(actual_node.data)
      
      queue.append(actual_node.left) unless actual_node.left.nil?        
      queue.append(actual_node.right) unless actual_node.right.nil?
    end
    
    puts result_level_order.join(' ')
  end                                          #*
end                                            #*

myTree=Solution.new                            #*
root=nil                                       #*
T=gets.to_i                                    #*
for i in 1..T                                  #*
  data=gets.to_i                               #*
  root=myTree.insert(root,data)                #*
end                                            #*
myTree.levelOrder(root)                        #*