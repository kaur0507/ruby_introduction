#! /usr/bin/env ruby


# # greeting using array as variable 
# def greet(name)
#   puts "Hello #{name}, welcome to my house!"
# end

# name = ["Ana", "Carolyn", "Maya", "Shay", "Dan", "Charles"]

# name.each { |person|
#   puts greet(person)
# }

# # usage of .times
# def tame( number_of_shrews )
#   number_of_shrews.times {
#     puts "Tamed a shrew"
#   }
# end

# puts tame(5)

# # conditions
# def hungry?(time_of_day_in_hours)
#   puts "Me hungry"
#   true
# end

# def hungry?(time_of_day_in_hours)
#   if time_of_day_in_hours < 12
#     puts "Me not hungry"
#     false
#   else
#     puts "Me hungry"
#     true
#   end
# end
  
# def eat_an(what)
#   puts "Me eat #{what}\n"
# end

# eat_an 'apple' if hungry?(14)

# eat_an 'apple' if hungry?(10)


# # easy mapping
# array = ["a", "b", "c"]

# array.map { |string| string.upcase }

# array2 = array.map { |string| string.upcase }

# puts array
# puts array2

# ["A", "B", "C"]


# # self
# class Example
#   def do_something
#     banana = "variable"

#     puts banana # it's going to output word "variable" cause we puts variable banana in the method
#     puts self.banana # here it puts method banana cause self gets the obect Example and example.banana
#       # is a method that prints a word "method" as an output
#   end

#   def banana
#     "method"
#   end
# end

# Example.new.do_something

# # "variable"  => puts banana
# # "method"    => puts self.banana

# # creating new class and objects of it
# class Salad
#   def initialize
#     @ingredients = []
#   end

#   def add_nuts
#     @ingredients << :nuts

#     self
#   end
# end

# my_salad = Salad.new.add_nuts

# # even and odd numbers method
# def even_or_odd(number)
#   if number % 2 == 0
#     return "Even"
#   else
#     return "Odd"
#   end
# end

# maping, string, array
sentence = "The sunset sets at twelve o' clock."

def alphabet_position(text)
  one = text.downcase.bytes.map!{|b|
    b - 96 > 26 || b - 96 < 1 ? '0' : b - 96
  }
  one = (one - ['0']).to_s.delete("[],")
  return one
end

puts alphabet_position(sentence)
