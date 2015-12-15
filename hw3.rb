# Coding
# 1
class Utility
	def self.count_words(input_string)
		result=Hash.new(0)	
		input_string.downcase.gsub(/[^a-z0-9\s]/,'').split.each do |i|
			result[i]+=1
		end
		result
	end
end
puts Utility.count_words("It was the best of times, it was the worst of times.")

# 2
class Animal
	attr_accessor :animal_name
	def initialize(animal_name)
		self.animal_name=animal_name
	end
	def speak
		{"dog"=>"woof", "cow"=>"moo","cat"=>"meow"}[animal_name]
	end
end
class SpockCat < Animal
	attr_accessor :animal_name
	def initialize(animal_name)
		self.animal_name=animal_name
	end
	def speak
		{"cat"=>"live long and prosper"}[animal_name]
	end
end
puts Animal.new("dog").speak
puts SpockCat.new("cat").speak


# Question
# get requests data from a specific source while post submits data to be processed to a specific source.
# get is generally less secure than post because data sent is part of the url while post sends data in the body and post can't be cached.