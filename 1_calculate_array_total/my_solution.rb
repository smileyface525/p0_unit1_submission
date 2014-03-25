# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# Define a method called total  
# total takes an array as an argument
#### In total definition ####
# Initialize sum to 0
#  Add each element of given array to sum
# Return sum

# Define a method called sentence_maker
# senetence_maker takes an array as an argument
#### In sentence_maker definition ####
# Initialize sentence to an empty string
# Capitalize the first element of the given array and set sentence to the value of the element.
# Add the rest of the elements to sentence with a space in between them.
# Add a period to sentence.
# Reuturn sentence.


# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def total array
	sum =  0
	array.each do |n|
		sum += n
	end
	sum
end

def sentence_maker array
	sentence = ''
	sentence = array.shift.capitalize!
	array.each do |word|
		sentence += " #{word}"
	end
	sentence += '.'
	sentence
end


# 3. Refactored Solution

def sentence_maker array
	# sentence = '' ----- Not needed
	sentence = array.shift.capitalize!
	array.each do |word|
		sentence += " #{word}"
	end
	sentence += '.'
	#sentence  ----- Not needed
end


# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# => Just carefully following the direction worked just fine for me!
# What questions did you have while coding? What resources did you find to help you answer them?
# => What is RSpec? That was my only quetion. I did watch the tutorial video that was referenced, and after doing this exercise, I finally understood what it does.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# =>As I stated in the previous question, concept of RSpec was a little confusing to figure out in the biginning, but as I soleved this challenge, I figured it out. 
# Did you learn any new skills or tricks?
# => How to install and use RSpec.
# How confident are you with each of the learning objectives?
# => Pretty confident.
# Which parts of the challenge did you enjoy?
# => Actually writing the code. And also the part when the code successfully runs!
# Which parts of the challenge did you find tedious?