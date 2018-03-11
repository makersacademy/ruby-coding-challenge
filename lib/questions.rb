# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
  # step 1: round up the number
  # step 2: convert to int
  float.ceil.to_i
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
  # step 1: round down the number
  # step 2: convert to int
  float.floor.to_i
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  # step 1: check if number is negative
  # if positive, turn to negative
  if number.positive?
    -number
  else
    number
  end
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  # swap values - documentation - .invert
  hash.invert
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
  # ASSUMPTION: all keys and values are numbers - can we refactor with error testing?
  # Documentation - can we add/sum everything in a hash? Enumerable suggests so.
  hash.sum {|k, v| k + v}
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  # splat array into Hash()
  # todo: find why this requires [] rather than ()
  Hash[*array]
end


# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  # step 1: identify capitals
  # step 2: remove capitals
  string.gsub(/[A-Z]/, "")
end


# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  # step 1: calculate length (even or odd)
  if (string.length).odd?
    half = (string.length/2).next
  else
    half = (string.length/2)
  end
  # step 2: grab first half (length) of string (.slice)
  string[0, half]
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
  # to_s is mentioned as a method for the Symbol object in the documentation
  symbol.to_s
end


# get the domain name *without* the .com part, from an email address
# so onboarding@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  at_split = email.split("@") # split the string on the @ symbol
  dot_split = at_split[1].split(".") # split it again on the .
  dot_split[0] # return the domain
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  # step 1: split string / make string iterable
  string_words = string.split
  # step 2: capitalise the first letter unless 'a, 'and' or 'the'
  array_titilised = [] # create an empty array to hold the string
  string_words.each do |word|
    if word == "a" || word == "and" || word == "the"
      array_titilised << word
    else
      array_titilised << word.capitalize
    end
  end
  # step 3: capitalise the first word in the string regardless
  array_titilised[0] = array_titilised[0].capitalize
  # step 4: finish up by returning joined string
  array_titilised.join(" ")
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  # Step 1: define NOT valid characters (a-z, A-Z and 0-9)
  # Lots of regexp learning for this one!
  /[^a-zA-Z0-9]/ === string
end

# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  a_array = []
  array.each do |element|
    if element.start_with?("a")
      a_array << element
    end
  end
  a_array
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  a_array = []
  array.each do |element|
    if element.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
      a_array << element
    end
  end
  a_array
end


# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  a_array = []
  array.each do |element|
    if element != nil
      a_array << element
    end
  end
  a_array
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  a_array = []
  array.each do |element|
    if element != nil && element != false
      a_array << element
    end
  end
  a_array
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  array.each { |element| element.reverse! }
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
  array.drop(3)
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

# return the shortest word in an array
def shortest_word_in_array(array)
  array.min { |a, b| a.length <=> b.length }
end

# return the [shortest] word in an array
# ^-- presuming the above is a typo (function says longest)
def longest_word_in_array(array)
  array.max { |a, b| a.length <=> b.length }
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  array.sum
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
  # combining some other code questions together to product result :)
  # step 1: create a float of the mean average
  # step 2: round up and convert to int
  (array.sum.to_f / array.count.to_f).ceil.to_i
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  # note - I feel this code could be cleaner :(
  # step 1: iterate over array
  # step 2: stop when >5
  final_array = []
  array.each do |num|
    if num <= 5
      final_array << num
    else
      break
    end
  end
  final_array
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  # step 1 : split array into letters
  char_array = []
  array.each { |word| char_array << word.split(//) }
  # step 2: reduce to uniques & sort
  sorted_array = char_array.flatten.uniq.sort
end

# BONUS SECTION

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
  date.strftime("%d/%m/%Y")
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  range.last
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
  range == (range.begin...range.end)
end

# get the square root of a number
def square_root_of(number)
  Math.sqrt(number)
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
  # Ruby documentation suggests this is something send() can do
  eval str_method
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2018_bank_holiday?(date)
  # This feels inelegant/manual but it gets the job done for now
  d1 = Time.new(2018, 3, 30)
  d2 = Time.new(2018, 4, 2)
  d3 = Time.new(2018, 5, 7)
  d4 = Time.new(2018, 5, 28)
  d5 = Time.new(2018, 8, 27)
  d6 = Time.new(2018, 12, 25)
  d7 = Time.new(2018, 12, 26)
  date == d1 || date == d2 || date == d3 || date == d4 || date == d5 || date == d6 || date == d7
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
  ## I think questions_spec.rb is incorrect here - 01/01/2020 is a Wednesday :)
  ## Correct answer for an input of 01/01/2018 should be 2021
  start_year = birthday
  while start_year.friday? != true
    start_year = start_year + (60*60*24*365)
  end
  start_year.year
end

# count the number of words in a file
def word_count_a_file(file_path)
  f = File.open(file_path, "r")
  contents = f.read
  f.close
  contents.split.length
end


# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
  f = File.open(file_path, "r")
  contents = f.read
  f.close
  word_length = Hash.new(0)
  contents.split.each do |word|
    word_cleaned = word.gsub(/\W/, "")
    if word_length[word_cleaned.length] == 0
      word_length[word_cleaned.length] = 1
    else
      word_length[word_cleaned.length] += 1
    end
  end
  word_length
end
