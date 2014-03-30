# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with: Anup Pradhan.

# 1. Pseudocode

# Define a method called mode that takes an array called a as an argument and returns the mode
# Declare an empty array called final
# Declare an empty hash called b
# Declare a variable called max and set it to 1
# Use .each to loop through the array a
# Add key value pair to hash b with a key as the element of the array and the value of the frequency of each value
# If the value is greater than max then reassign the value to max


# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def mode(a)
  # b = Hash.new { |x, y| b[x] = 0 }
  b = Hash.new(0)
  final = [];
  max = 1
  a.each do |x|
    b[x] +=1
    if b[x] >= max
     max = b[x]
    end
  end

  b.each do |x,y|
    if max == y
      final<< x
    end
  end
  return final
end


# 3. Refactored Solution

def mode(a)
  b = Hash.new(0)
  final = Hash.new()
  max = 1
  a.each do |x|
    b[x] +=1
    if b[x] >= max
     max = b[x]
     end
  end
  final = b.select { |x,y| y == max }
  final.keys
end

#----- Alternate solution using .inject(needs bug fixing) -----

# def mode(array)
#   array.inject(Hash.new(0)) do |b, x|
#     b[x] += 1
#   end
#   max = b.values.max
#   final = b.select { |x, y| y == max }
#   final.keys
# end


# 4. Reflection 
# What parts of your strategy worked? What problems did you face?
# => This time, I followed my peer pairing partner Anup's direction since he seemed comfortable with this challenge, and this stragedy worked very well!
# What questions did you have while coding? What resources did you find to help you answer them?
# => How to keep track on how many time each element occurs. Anup had a great solution for it!
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Did you learn any new skills or tricks?
# => If you provide an argument to Hash.new, you can set the default value.
# How confident are you with each of the learning objectives?
# => Pretty confident after Anup's explanation.
# Which parts of the challenge did you enjoy?
# => Learing a new way to solve a problem.
# Which parts of the challenge did you find tedious?
# => Writing the pseudocode.