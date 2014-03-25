# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge myself.

# 1. Pseudocode

# DEFINE a method called get_grade which takes an array as an argument
# ---- Inside get_grade definition ----
# Compute the sum of all the elemets 
# DIIVIDE the sum by the number of the elements and assign the value to  a variable called average.
# CASE average OF
# => 100..90 : RETURN 'A'
# => 89..80  : RETURN 'B'
# => 79..70  : RETURN 'C'
# => 69..60  : RETURN 'D'
# => ELSE    : REUTRN 'F'
#
#
# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def get_grade array
	sum = 0
	array.each do |n|
		sum += n
	end
	avg = sum / array.length
	case avg
	when 90..100 
		"A"
	when 80..89
		"B"
	when 70..79
		"C"
	when 60..69
		"D"
	else
		"F"
	end
end

# 3. Refactored Solution

# Varable names are clear 
# => avg
# => sum

# Code is concise and readable

# The code is DRY 
# => use of number incrementing sign
# => implicit return
# => directly assigning a value to a variable after computation


# 4. Reflection
# What parts of your strategy worked? What problems did you face?
# => I just followed the same steps as the previous challenge.
# => Using the code I created on one of the socrates peoblems.
# What questions did you have while coding? What resources did you find to help you answer them?
# => I didn't have any questions since this challenge was similar to the previous one.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# => Code refactoring was a little tricky bacause I could not find anything in my code that needed refactoring but explaining why not was difficult.
# Did you learn any new skills or tricks?
# => No.
# How confident are you with each of the learning objectives?
# => Pretty confident exept fot the refactoring part.
# Which parts of the challenge did you enjoy?
# => Getting the code right and having no errors in it!
# Which parts of the challenge did you find tedious?
# => Expalining why I think my code doesn't need any refactoring.