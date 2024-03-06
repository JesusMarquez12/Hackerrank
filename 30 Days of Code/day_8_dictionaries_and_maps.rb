#!/bin/ruby

# https://www.hackerrank.com/challenges/30-dictionaries-and-maps

#* Enter your code here. Read input from STDIN. Print output to STDOUT

register_numbers = gets.chomp.to_i
phone_book = {}
register_numbers.times do
    name, phone_number = gets.chomp.split(' ')
    phone_book[name] = phone_number.to_i
end

until (name_query = gets) == nil
    name_query.chomp!
    if phone_book.key? name_query
        puts "#{name_query}=#{phone_book[name_query]}"
    else
        puts "Not found" 
    end
end