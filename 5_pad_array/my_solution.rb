# U1.W3: Pad an Array!

# I worked on this challenge [by myself, with: ].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with: Adam Dziuk.

# 1. Pseudocode

# DEFINE Array.pad! which takes an integer n as an argument and padding as an optional argument
# SET length to the length of the array object(self)
# IF length is greater than n
# 	THEN ADD padding to the array object n-length times
# 	RETURN the array object
# ELSE 
# 	RETURN the array object

# DEFINE Array.pad which takes an integer n as an argument and padding as an optional argument
# SET length to the length of the array object(self)
# CLONE the array object and name it array_padded
# IF length is greater than n
# 	INITIALIZE  array_padded to an empty array
# 	THEN ADD padding to array_padded object n-length times
# 	RETURN the array object
# ELSE 
# 	RETURN the array object

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

class Array 
	def pad! n, padding=nil
		length = self.length
		if n > length
			(n-length).times { self.push(padding) }
			self
		else
			self
		end
	end
	def pad n, padding=nil
		length = self.length
		array_padded = self.clone
		if n > length
			(n-length).times { array_padded.push(padding) }
			array_padded
		else
			array_padded
		end
	end
end


# 3. Refactored Solution

class Array 
	def pad! n, padding=nil
		spaces = n - self.length
		if spaces > 0
			spaces.times { self.push(padding) }
			self
		else
			self
		end
	end
	def pad n, padding=nil
		spaces = n - self.length
		padded = self.clone
		if spaces > 0
			spaces.times { padded.push(padding) }
			padded
		else
			padded
		end
	end
end

# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# => My strategy here was to try to write psudocode as specific as possible. It took me some time but that process helped me construct the code in my head. 
# What questions did you have while coding? What resources did you find to help you answer them?
# => How do I create a mehtod that is specifically used with arrays? I had to think about this and look over my notes and so some reserch until I figure it out.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# => While I was defining Arra#pad, I had to think of a way to recreate the array so the original won't be changed. And I research on the internet and found .clone and .dup. I read the difference between the two and kind of understood but still not quite.
# Did you learn any new skills or tricks?
# => Definitely how to extend a class by adding a method. Also use of .clone.
# How confident are you with each of the learning objectives?
# Which parts of the challenge did you enjoy?
# => Learning new things. This helped me deepen the understanding of the materials I already knew.
# Which parts of the challenge did you find tedious?
# => Trying to debug on irb.