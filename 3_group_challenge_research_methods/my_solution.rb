# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source, thing_to_locate)
  # Your code here!
end

def my_hash_sorting_method(source, thing_to_locate)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
	source.each do |word|
		if word.to_s.include?(thing_to_delete)
			source.delete(word)
		end
	end
	source
end

def my_hash_deletion_method(source, thing_to_delete)
	source.each do |key, value|
		if key.to_s.include?(thing_to_delete)
			source.delete(key)
		end
	end
end

def my_deletion_method(source, thing_to_delete)
	source.each do |key, value|
		if source.kind_of? Array 
			if value.to_s.include?(thing_to_delete)
				source.delete(value)
			end
		elsif source.kind_of? Hash
			if key.to_s.include?(thing_to_delete)
				source.delete(key)
			end
		end
	end
end

# Identify and describe the ruby method you implemented. 
#### my_array_deletion_method
# => Scan the each word in the array (Using .each method) 
# => Check to see if the word contains thing_to_delete
# => Delete the array(word) if it contains thing_to_delete.

#### my_hash_deletion_method
# => Scan the each key and value pair in the hash (Using .each method) 
# => Check to see if the key contains thing_to_delete
# => Delete both key and the value if the key contains thing_to_delete.


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets, "pets") == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages, age) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# 
# What parts of your strategy worked? What problems did you face?
# => Lots of research on methods! That worked for me. I looked array mothods, hash methods and string methods. 
# What questions did you have while coding? What resources did you find to help you answer them?
# => What method works to pass the test in the most efficient way. Ruby doc helped a lot.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# => I got stuck on the fact that the mothod had to be able to delete words that includes the alphabet that was given. It was tricky in the biggining since I could not use .select method. But then I found .include which seems to work fine.  
# Did you learn any new skills or tricks?
# => How to iterate through both an array and a hash in one method. Also, how to use .include and .kind_of? which tells whether an object is an instance of a certain class.
# How confident are you with each of the learning objectives?
# => After a little bit of research, I feel pretty confident.
# Which parts of the challenge did you enjoy?
# => Discovering useful methods and learning how to use them.
# Which parts of the challenge did you find tedious?
# => While experimenting with different methods, I failed the test several times and it was a little frustrating.
# What did you learn about researching and explaining your research to others?
# => Because we have been required to explain our solution to others in other challenges, it didn't feel much different for me. Wirint pseudocode, refactoring and reflecting heve helped me feel a little more comfortable sharing my thoughts with others. 
# 