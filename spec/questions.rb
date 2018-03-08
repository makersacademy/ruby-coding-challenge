# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
	intNumber = float.to_i
	result = (intNumber < float) ? intNumber + 1 : intNumber
	return result
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
	intNumber = float.to_i
	result = (intNumber < float) ? intNumber : intNumber - 1
	puts result
	return result
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
	return number > 0 ? - number : number
end


# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
	dictionary = hash
	result = Hash.new
	dictionary.each do |key, value|	
		result[value] = key
	end
	return result
end


# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
	result = 0
	hash.each do |key, value|
		result += key.to_i + value.to_i
	end
	return result
end


# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
	result = Hash.new
	if array.count % 2 == 0
		array.each_index { |x| 
			if x.even?
				result[array[x]] = array[x+1]
			end
		}
	end
	return result

end


# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
	string.each_char do |s|
		if s == s.capitalize && s != " "
			string.delete! s
		end
	end
	result = string
	return result
end

remove_capital_letters_from_string("Hello JohnDoe")

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
	lenght = string.length
	return lenght%3 == 0 ? string[0..lenght/2] : string[0..round_up_number(lenght/2)]
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
	return symbol.to_s
end

# get the domain name *without* the .com part, from an email address
# so onboarding@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
	startIndex = email.index("@")
	endIndex = email.index(".")

	return email[startIndex+1..endIndex-1]
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)

		# Too difficult :)
end


# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers

def check_a_string_for_special_characters(string)

	hasSpecialChar = false
	tesst = ""
	string.each_char { |x|
		if !x[/[a-zA-Z0-9]/] == true
			hasSpecialChar = true
		end
	}

	puts hasSpecialChar

end


# keep only the elements that start with an a
def select_elements_starting_with_a(array)
	resultArray = Array.new
	array.each do |element|
		if element[0] == "a"
			resultArray.push(element)
		end
	end
	return resultArray
end


# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
	resultArray = Array.new
	array.each do |element|
		if element.scan(/[aeiou]/).include? element[0]
			resultArray.push(element)
		end
	end
	return resultArray
end


# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
	result = Array.new
	array.each do |element|
		if element != nil 
			result.push(element)
		end
	end
	return result
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
	result = Array.new
	array.each do |element|
		if element != nil && element != false
			result.push(element)
		end
	end
	return result
end


# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
	resultArray = Array.new

	array.each do |word|
		resultArray.push(word.reverse)
	end
	
	return resultArray
		
end


# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)

	result =  array.drop(3)

	return result
end



# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)

	result = array.insert(0, element)
	return result

end



# return the shortest word in an array
def shortest_word_in_array(array)
	arraySplit = array[0].split
	result = arraySplit[0]
	arraySplit.each do |word|
		if word.length < result.length
			result = word
		end
	end
	return result
end

# return the shortest word in an array
def longest_word_in_array(array)
	arraySplit = array[0].split
	result = arraySplit[0]
	arraySplit.each do |word|
		if word.length > result.length
			result = word
		end
	end
	return result
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
	puts array.reduce(:+)
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
	totalAdd = array.reduce(:+)
	count = array.count
	return round_up_number(totalAdd/count.to_f)
end


# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
	indexToSearchFor = 0
	array.each do |x|
		if x > 5
			indexToSearchFor = array.index(x)-1
			break
		end
	end
	return array[0..indexToSearchFor]
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)

	resultArray = Array.new

	array.each do |word|
		word.each_char { |x| 
			resultArray.push(x)
		}
	end
	return resultArray.sort

end


# BONUS SECTION

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
	day = date.day
	month = date.month
	year = date.year
	return "#{day}/#{month}/#{year}"
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)

	return range.last

end


# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
	
	return range.to_a.last != range.last ? true : false 
		
end



# get the square root of a number
def square_root_of(number)

	return Math.sqrt(number)

end


# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)

	return str_method

end


# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2018_bank_holiday?(date)
	bankHolidays = ["30/3/2018","2/4/2018","7/5/2018","28/5/2018","27/8/2018","25/12/2018","26/12/2018"]
	dateToCheck = format_date_nicely(date)

	isBankHoliday = false
	bankHolidays.each do |element|
		if element == dateToCheck
			isBankHoliday = true
		end
	end
	return isBankHoliday
end


# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)

	#while day != friday 
	#27 jan 2019 == friday?

	dateStart = birthday
	dateResult = Time.new
	year = dateStart.year

	until dateResult.friday? == true
		dateResult = Time.new(year, 1, 27)
		year += 1
	end 

	return dateResult

end


# count the number of words in a file
def word_count_a_file(file_path)

	text = File.open(file_path)
	result = ""
	text.each {|word|
		result = word
	}

	arraySplit = result.split(" ")
	return arraySplit.count
end


# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}

def count_words_of_each_length_in_a_file(file_path)
	text = File.open(file_path)

	result = ""

	text.each {|word|
		result += word
	}

	arraySplit = result.split(" ")


	arraySplit.each do |word|
		word.delete! "."
		word.delete! ","
		word.delete! "+"
	end

	resultHash = Hash.new

	longestWordCount = 0

	arraySplit.each do |word|
		if longestWordCount < word.length
			longestWordCount = word.length
		end
	end

	lengthsForWords = (1..longestWordCount).to_a
	
	lengthsForWords.each do |word_length|

		count = 0

		arraySplit.each do |word|

			if word.length == word_length

				count += 1

			end
			resultHash[word_length] = count

		end

	
	end


	return resultHash
end











