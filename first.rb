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

# # maping, string, array
# sentence = "The sunset sets at twelve o' clock."

# def alphabet_position(text)
#   one = text.downcase.bytes.map!{|b|
#     b - 96 > 26 || b - 96 < 1 ? '0' : b - 96
#   }
#   one = (one - ['0']).to_s.delete("[],")
#   return one
# end

# puts alphabet_position(sentence)


# class Mind
#   INNATE_IDEAS = [
#     "God exists",
#     "2 + 2 = 4",
#     "I think therefore I am" 
#   ]
#   def initialize
#     @ideas = []
#   end
#   def any_ideas?
#     !@ideas.empty?
#   end
#   def brain_wash!
#     @ideas.clear
#   end
#   def say_something
#     @ideas[rand(@ideas.size)].to_s
#   end
#   def <<(idea)
#     @ideas << idea
#   end
#   def think(ideas)
#     @ideas += ideas
#   end
#   def Mind.new_idea
#     Idea.new(INNATE_IDEAS[rand(3)])
#   end
# end

# class Idea
#   attr_reader :verbal_expression
#   def initialize(content)
#     @verbal_expression = content
#   end
#   def +(other)
#     Idea.new(@verbal_expression + "." +  other.verbal_expression)
#   end
#   def to_ary
#     @verbal_expression.split(".").collect{|ve| Idea.new(ve)}
#   end
#   def to_s
#     @verbal_expression
#   end
# end
# cartesian_mind = Mind.new
# puts cartesian_mind.any_ideas?
# #=> false 
# cartesian_mind << Mind.new_idea
# puts cartesian_mind.any_ideas?
# #=> true
# puts cartesian_mind.say_something
# #=> "I think therefore I am" 
# cartesian_mind.brain_wash!
# puts cartesian_mind.any_ideas?
# #=> false 
# stupid_idea1 = Idea.new("Pineal gland is the seat of the soul")
# stupid_idea2 = Idea.new("Animals are machines")
# cartesian_mind.think(stupid_idea1 + stupid_idea2)
# puts cartesian_mind.say_something
# #=> "Pineal gland is the seat of the soul"

# puts %{Ruby is fun.} # equivalent to "Ruby is fun."
# puts %Q{ Ruby is fun. } # equivalent to " Ruby is fun. "
# puts %q[Ruby is fun.] # equivalent to a single-quoted string
# puts %x!ls! # equivalent to back tick command output `ls` - names of all the files included

# # entering a value
# puts "Enter a value :"
# val = gets
# puts val

# aFile = File.new("input.txt", "r+")
# if aFile
# #    aFile.syswrite("ABCDEF")
#    aFile.each_byte {|ch| putc ch; putc ?. }
# else
#    puts "Unable to open file!"
# end

arr = IO.readlines("input.txt")
puts arr[0]
puts arr[arr.length - 2]
puts arr.last


IO.foreach("input.txt"){|block| puts block}