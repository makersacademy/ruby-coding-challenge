# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
	float.ceil
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
	float.floor
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
	number *= -1 if number > 0
	number
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
	hash.invert
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
	total = 0
	hash.each {|key, value| total += key + value }
	total
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
	array.each_slice(2).to_h
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
	string = string.gsub(/[A-Z]/,'')
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
	second_half = ((string.length)/2).floor
	array = string.split('')
	second_half.times { array.pop }
	string = array.join('')
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
	symbol.to_s
end

# get the domain name *without* the .com part, from an email address
# so onboarding@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
	at = email.index('@').to_i + 1
	string = email[at...-4]
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
	array = string.split(' ')
	array[0].capitalize!
	array.each do |object|
		case object
		when 'a', 'and', 'the'
		else
			object.capitalize!
		end		
	end
	string = array.join(' ')
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
	if /\W/.match(string)
		true
	else
		false
	end
end

# keep only the elements that start with an a
def select_elements_starting_with_a(array)
	array.select { |element| element.start_with?('a') }
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
	array.select! { |element| element.start_with?('a','e','i','o','u') }
	string = array.join(' ')
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
	array.select { |element| element != nil }
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
	array.select { |element| element != nil && element != false }
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
	array.each { |element| element.reverse! }
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
	array.slice(3,array.length)
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
	array.unshift(element)
end

# return the shortest word in an array
def shortest_word_in_array(array)
	lengths = Array.new
	array.each { |element| lengths.push(element.length)}
	array[lengths.index(lengths.min)]
end

# return the shortest word in an array
def longest_word_in_array(array)
	lengths = Array.new
	array.each { |element| lengths.push(element.length)}
	array[lengths.index(lengths.max)]
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
	total = 0
	array.each { |element| total += element }
	total
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
	average = 0.0
	array.each { |element| average += element }
	average /= array.length
	average.round
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
	returned = []
	returned.push(array.shift) until array[0] > 5
	returned
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
	letters = []
	array.each { |word| letters.push(word.split('')) }
	letters.flatten.sort
end

# BONUS SECTION

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
	string = date.to_s
	string = "#{string[8..9]}/#{string[5..6]}/#{string[0..3]}"
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
	range.end
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
	range.exclude_end?
end

# get the square root of a number
def square_root_of(number)
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2018_bank_holiday?(date)
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
end

# count the number of words in a file
def word_count_a_file(file_path)
end


# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
end
