# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked
#    What I learned from this solution
# => This was done by ClarkGH. I really like the simplicity of this code. 
# 	 Very cleean and easy to understand. I really like his use of 'until'.

# Copy solution here:
class Array
	def pad(min_size, optional_value = nil)
		array_clone = self.clone
		array_clone << optional_value until array_clone.length >= min_size
		return array_clone
	end

	def pad!(min_size, optional_value = nil)
		self << optional_value until self.length >= min_size
		return self
	end
end

# 2. Second Person's solution I liked
#    What I learned from this solution
# => This was done by aalba005. His solution was somewhat similar to mine 
# 	 but the biggest difference is the fact he used his pad! to create pad!
# 	 This is so simple but yet very clever!
# Copy solution here:
class Array
  def pad!(min_length, value = nil)
    padding_length = min_length - self.length 
    padding_length.times do
    self << value
    end 
    self
  end
  
  def pad(min_length, value = nil)
    
  self.dup.pad!(min_length, value)
  end
  
end



# 3. My original solution:
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


# 4. My refactored solution:
class Array
	def pad! n, padding=nil
		self.push(padding) until self.length >= n
		self
	end
	def pad n, padding=nil
		cloned = self.clone
		cloned.pad!(n, padding)
	end
end
# 5. Reflection
# What parts of your strategy worked? What problems did you face?
# => Just reading and learning from other people's solution.
# Did you learn any new skills or tricks?
# => I leanred use of until and also how to use an instance method within 
#    its own class definition.
# How confident are you with each of the learning objectives?
# => Very confident.
# Which parts of the challenge did you enjoy?
# => Learing new tricks and methods from other students. And making my code much
#    more compact!
# Which parts of the challenge did you find tedious?
# => I didn't find any parts of this challenge tedious. If anything, this
#    reflection was a little tedious ;-) 