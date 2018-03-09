# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
  return float.ceil.to_i
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
  return float.floor.to_i
end


# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
    if number < 0
        return number
    else
        return number * -1
    end
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  return hash.invert
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
    sum = 0
    hash.each { |key, value|
        sum += key
        sum += value
    }
    return sum
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
    return array.each_slice(2).to_h
end


# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  return string.delete('A-Z') 
end


# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  return string[0..(string.length - 1) / 2]
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
  return symbol.to_s
end


# get the domain name *without* the .com part, from an email address
# so onboarding@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
    at = email.index('@') + 1
    dot = email.length - email.index('.')
    return email[at, email.length - (at + dot)]
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
    ignore = ['a', 'and', 'the']

    words = string.split
    words.each { |word| 
        if not (ignore.include? word.downcase)
            word[0] = word[0].upcase
        end
    }

    result = words.join(" ");
    result[0] = result[0].upcase
    return  result
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
end

# keep only the elements that start with an a
def select_elements_starting_with_a(array)
    return array.select { |item|
        item[0] == 'a'
    }
end


# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
    vowels = ['a', 'e', 'i', 'o', 'u']

    vowelWords = array.select { |item|
        vowels.include? item[0].downcase
    }
    return vowelWords.join(" ")
end


# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  return array.compact
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
    array.compact!.delete(false)
    return array
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
    array.each { |item|
        item.reverse!
    }
    return array
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
  array.drop(3)
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  return array.insert(0, element)
end

# return the shortest word in an array
def shortest_word_in_array(array)
    array.min{ | item1, item2 | 
        item1.length <=> item2.length 
    }
end

# return the shortest word in an array
def longest_word_in_array(array)
    array.max{ | item1, item2 | 
        item1.length <=> item2.length 
    }
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
    array.reduce(:+)
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
end

# BONUS SECTION

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
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
