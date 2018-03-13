=begin
This first section is relating to basic mathematical operators
My only source here was https://ruby-doc.org/core-2.5.0/Numeric.html
=end
# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
    return float.ceil
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
  return float.floor
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  if number > 0 # operates only on positive numbers
    number = number.to_s # converts the integer into a string
    return ('-' + number).to_i # adds the negative operator before the number in string form and converts them into an integer
     else
        return number.to_i # operates only on negative numbers making sure they're being returned as integers
  end
end

=begin
A segment dedicated to arrays with a identity and codependency problems (Hashes)
For this part I weaved in and out of https://ruby-doc.org/core-2.5.0/Hash.html
& http://ruby-doc.org/core-2.5.0/Array.html as in somecases the problem looked more simplified when in array format
while also having better control and manipulation.
Secondary solutions have been hashed out
=end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  return hash.invert
    #arr = hash.to_a.flatten!.reverse
    #arr2 = arr.each_slice(2).to_a
    #nouveauHash = arr2.to_h
end
=begin First solution is shortest the working method however
removes duplicate values!
Second solution just the long way of doing it.
=end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
sum = 0
  a = hash.keys # returns all keys as an array
  b = hash.values # returns all values as an array
  c = a + b # adds both the arrays together creating one array from both
  c.each do |i| # iterates through each element in the array
  sum += i # adds to the accumulator
end
      return sum #  returns the accumulator (all the numbers added to each other)
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  arr = array.each_slice(2).to_a # returns subarray starting at the start index and continuing for length of the array(pairing elements up where they are)
  hash = arr.to_h # convert the array into a hash while they are paired
  return hash
end

=begin
Strings not the kind who's length you query
Strings section covered the manipulation of simple text and collection of data relating to it.
=end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
   newStr = string.tr_s('A-Z','') # removes all capital letters in place on a string then replaces them with nothing
   return newStr
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  loke = (string.length).to_f/2 # turns the string length into a float so it can be rounded if not an even number when divided by 2 and then halves it
  median = loke.ceil # rounds up the float and converts it to an integer
return  string[0, median] # returns the original string from the first character until the count of the median
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
  return symbol.to_s
end

# get the domain name *without* the .com part, from an email address
# so onboarding@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  comRem = email.gsub(/.com.*/, '') # removes the .com section from email and saves it as var comRem
  arr = comRem.split('@') # splits the string at the @ symbol returning it as an array (example ['onboarding@','makersacademy']
  domain = arr.pop # removes the first element of the array keeping the section after @
  return domain # returns the section after @ (the domain name)
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  skipIt = ['and', 'And', 'the', 'The',  'a', 'A'] # creates a var of the array of words upcase and downcase that need to be skipped
  string = string.downcase #makes the whole string lower case
  arr = string.split #turns the string into an array where each word is an element
  arr2 = arr.map { |word| skipIt.include?(word) ? word : word.capitalize }
# the above maps the array skipping the element if it includes any of the skipIt elements and capitalizes anything that doesn't match
# then returns it as a string

  reStrung = arr2[0].capitalize # takes the first element of the last array and makes that capital
  finalTitle = arr2[1..-1].unshift(reStrung).join(' ') # takes all but the first element of the array
  # then adds the capitalized version of the first element and rejoins it forming a string of all the elements
  return finalTitle
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  if /\W/.match(string) # creates if statement where special charactes match the statement is satisfied and returns true
    return  true
  else # if they don't match it returns false
    return false
  end
end

=begin
Arrays...
this is the segment I spent most of my time reading about as almost all the classes were far easier to manipulate having been converted to this format.
=end

# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  newArr = array.select { |word| word.start_with?('a') } # searches through each word in an array for a match with the arguement and selects it
  return newArr # returns the selection
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  # originaly used .start_with?(/[AEIOUaeiou]/) however undefined Regex error
  # came up and have not managed to find an explanation as to why
  vowlPlay =array.select { |word| word.start_with?('a','A','e','E','i','I','o','O','u','U') } # see above exercise for explanation
  vowlPlay = vowlPlay.join(' ') # takes the array and returns it as a string
  return vowlPlay
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  clean = array.compact # removes all nil values
  return clean
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  clean = array.compact # removes all nil from array
  clean.delete(false) # removes all occurences of false
  return clean
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  str = array.join(' ').reverse # turns the array into a string and reverses it
  arr = str.split(' ') # turns the string thats been reversed into a new array
  return arr.reverse # puts that array back into the order of the original array
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
  arr = array.drop(3) # removes the all elements until the element count in the arguement
  return arr
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  newArr = array.unshift(element) # unshift puts elements on to the beggining of an array and its arguement is what you put there
  return newArr
end

# return the shortest word in an array
def shortest_word_in_array(array)
  shortStraw = array.min { |i, j| i.length <=> j.length } # iterates through and compares each word in an array and keeps only the minimum
  return shortStraw
end

# return the shortest word in an array
def longest_word_in_array(array)
  longErr = array.max { |i, j| i.length <=> j.length } # iterates through and compares each word in an array and keeps only the longest
  return longErr
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  sum = 0 # accumulator
   array.each do |i| # iterates through each element in the array adding its value to the accumulator
   sum += i
 end
 return sum
end


# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
  sum = 0
   arr = array
   arr.each do |i|
   sum += i # see above exercise for description
 end
 sum = sum.to_f # converts the accumulator into a float
  avArr = (sum/array.length).ceil # takes the float divides it by the number of elements in the original array and rounds up
  return avArr
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  highFive =  array.take_while { |i| i < 6 } # iterates through the array returning the number while its less than 6 stops if 6 or above
  return highFive
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  arr = array.join('') # turns the array into a string with no spaces
  arrNew = arr.split('').sort # turns the string into an array of each character then sorts it by value
return arrNew
end

# BONUS SECTION

=begin
The thing I struggled here with the most are dates.
There are so many different input formats and most places I looked at to understand the syntax were actually rather unclear and confusing.
Much of my time here in the bonuses was spent trawling stackoverflow whre I found more often than not half formed answers.
Explanations given were along the lines of 'this works therefore it is' it shows why its important when typing tests and solutions to put comments describing what is being done.
=end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
  teaParty = date # stores date as a var to be called on
  rabbit = teaParty.strftime '%d/%m/%Y' # formats the var into dd/mm/yyyy
return rabbit
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  upLim = range.end # returns the last value in a range
  return upLim
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
  if range.exclude_end? # a 3 dot range doesn't include the last number thereore if the range doesn't include its name the statement is satisfied so returns true
    return true
  else # returns false if not satisfied
    return false
  end
end

# get the square root of a number
def square_root_of(number)
  sqarut = Math.sqrt(number) # operator that calculates the square root stored as a variable to be returned
  return sqarut
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
meth = eval(str_method) # method that takes any string an evaluates it for a method that can be called
return meth
end

# return true if the date is a uk bank holiday for 2018
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2018_bank_holiday?(date)
bankHol = ['30-03-2018','02-04-2018','07-05-2018','28-05-2018','27-08-2018','25-12-2018','26-12-2018'] # array of 2018 UK bank holidays stored as var to be compared against
date = date.strftime '%d-%m-%Y' # formats date nicely
return bankHol.include?(date) # returns true if inputed date matches any of the element in bankHol
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
#birthday = birthday.strftime("%A") #retrieve the day from the inputed birthday
#until birthday.Friday? == true # 'until it was a friday again increase the count'
#   year += 1
#end
#return
end

# count the number of words in a file
def word_count_a_file(file_path)
  cLippy = IO.binread(file_path).split(/\s+/).length # opens and reads file in 'file_path' then splits it at all by each word into an array and returns the length
  return cLippy
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)

  wordOc = Hash.new(0) # creates a new empty hash
  IO.binread(file_path).downcase.scan(/\w+/) do |word|
  wordOc[word] += 1
  end # populates the hash after reading the file, downcasing all the words so there are no caps versions in the keys
    # then scans for occurences of each word creating a new key for each new word putting their occurence count as value
return  wordOc
  #returns correct hash however not the length of the word as key rather the word.
  #have looked into solution and believe it may be along the lines of converting to array
  #then iterating through and converting each string into its .length value and rehashing
end
