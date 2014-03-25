# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# DEFINE a method called median which takes an array as an argument
#---- Inside median definitiion ----
# SORT the array
# DIVIDE the length by 2 and call the number n
# IF the length of the array is odd
# 	THEN RETURN the nth element of the array 
# IF the length of th array is even   
# 	THEN ADD (n-1) and nth elements of the array and DIVIDE the number by two
# 	RETURN the number


# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def median array 
	array.sort!
	length = array.length
	n = array.length/2
	if (length%2 == 1)
		return array[n]
	end
	if (length%2 == 0)
		(array[n-1] + array[n]) / 2.0
	end
end

# 3. Refactored Solution

def median array 
	array.sort!
	length = array.length
	index = n/2
	if (length%2) == 0
		(array[index-1] + array[index]) / 2.0
	else
		array[index]
	end 
end

# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# => As usual, following the direction worked for me. Also using irb helped me debug my code. 
# What questions did you have while coding? What resources did you find to help you answer them?
# => Not so much of questions but I did look up some of my old notes and Chris Pine book to refresh my memory on sytax. (i.e. if and else)
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# => In the initial solution, I kept getting an error and I could not figure out why. It turned out that I was overusing the concept of implicit return and I just needed to add "return" to the end of the first if statement.
# Did you learn any new skills or tricks?
# => I deepened the uderstanding of "implicit return".
# How confident are you with each of the learning objectives?
# => Mostly confident but as usual, I'm not totally sure if my code could use further refactoring or not. I did my best though!
# Which parts of the challenge did you enjoy?
# => I always enjoy running my code and getting 0 errors :-)
# Which parts of the challenge did you find tedious?
# => Writing the Pseudocode. Actually, I do find it very helpful but sometimes I feel like I spend too much time figuring out how to write it.