#1 round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
  puts float.ceil
end

#2 round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
  puts float.floor
end


#3 turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  if number < 0
    puts number
  elsif number > 0
    puts -number
  else puts "Your number is not positive or negative"
  end
end

#NOTE TO SELF - refactor ^

#4 swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  puts hash.invert
end

#5 in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
  sum = 0
  hash.each {|k, v| sum += (k+v)}
  puts sum
end

#6 turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  my_hash = array.each_slice(2).to_a.to_h
  puts my_hash
end


#7 take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  string_split = string.chars.to_a
  new_string = ""
  string_split.each do |x|
    if x == x.downcase
      new_string += x
    end
  end
    puts new_string
end


#8 cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  #NOTE TO SELF - come back to this
end

#9 convert a symbol into a string
def turn_symbol_into_string(symbol)
  puts symbol.to_s
end


#10 get the domain name *without* the .com part, from an email address
# so onboarding@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  new = email.partition("@").last
  puts new.split(".com")
end

#11 capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)

#NOTE TO SELF - come back to this
end

#12 return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  #COME BACK TO THIS
end

#13 keep only the elements that start with an a
def select_elements_starting_with_a(array)
  a_array = []
  array.each {|x| a_array << [x] if (x[0] == "a") || (x[0] == "A")}
  print a_array
end

#14 keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
end


#15 remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  new_array = []
  array.each {|x| new_array << [x] if x != nil}
  print new_array
end

#16 remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  new_array = []
  array.each {|x| new_array << [x] if !(x.nil? || x==false)}
  print new_array
end

#17 don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  array.each {|x| x.reverse!}
  print array
end

#18 discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
  3.times {array.shift}
  print array
end

#19 add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  print array.unshift(element)
end

#20 return the shortest word in an array
def shortest_word_in_array(array)
end

#21 return the longest word in an array
def longest_word_in_array(array)
end

#22 add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  total = 0
  array.each {|x| total +=x if x.is_a? Numeric}
  puts total
end

#23 get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
  total = 0
  array.each {|x| total += x}
  puts average = (total.to_f / array.length).round
end

#24 get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  new_array=[]
  array.each do |x|
    break if x > 5
    new_array << [x]
  end
  print new_array
end

#25 get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  new_array = []
  array.each {|i| new_array += i.chars.to_a}
  print new_array.sort!
end

# BONUS SECTION

#26 take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
end

#27 get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
end

#28 should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
end

#29 get the square root of a number
def square_root_of(number)
  puts Math.sqrt(number)
end

  --- tougher ones ---

#30 call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
end

#31 return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2018_bank_holiday?(date)
end

#32 given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
end

#33 count the number of words in a file
def word_count_a_file(file_path)
end


#34 in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
end
