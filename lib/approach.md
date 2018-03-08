round_up_number
- recalled that there are built in methods to round a float up and down. 
- Searched ruby docs and found #ceil
- called ceil on provided argument

round_down_number
- As above, searched ruby docs and found #floor
- called floor on provided argument

make_numbers_negative
- Tested to confirm if number was positive using if statement
- If positive multiplied by -1
- If not positive returned number
- Refactored later to convert if statement to single line if statement

swap_keys_and_values_in_a_hash
- Typed "ruby swap key value hash" in google, first stack overflow link suggested hash.invert among other methods. Noted safe_invert if failed.
- Tested hash.invert, worked. Currently don't understand code within safe_invert so have bookmarked for later study

add_together_keys_and_values
- Initial idea was to convert hash to array and sum all together
- Used to_a method on hash, then used .inject(0){|sum,x| sum + x } (found on stack overflow). Testing failed
- Thought instead of iterating using #each and summing all keys and values together. Worked and easily understood

convert_array_to_a_hash
- Considering there is #to_a, assumed there would be #to_h, confirmed in ruby docs
- Tested using array.to_h, failed
- Searched failure on google, discovered stack overflow page discussing differences between #to_h and Hash[]
- Noticed arrays being given are multidimensional with each object in the array being an array with two objects. Decided to try and convert provided argument into multiple arrays with two objects apiece
- Stack overflow led me to #slice(n), tested in combination with #to_h, worked!

remove_capital_letters_from_string
- Have been learning about regexps, tried string = string.gsub(/A-Z/,''), failed.
- Realised failure is due to regexp searching for "A-Z" rather than all uppercase characters individually, amended to string = string.gsub(/[A-Z]/,''), worked

get_first_half_of_string
- used #length to obtain length of string, then divided by 2, rounded down using #floor (will #pop ). Stored in local variable second_half
- used #split('') to split string into array
- popped the second half of the string length using second_half
- used #join to join array back into string
- Tested each step after adding code to confirm it was doing what was expected

turn_symbol_into_string
- Used #to_s

get_domain_name_from_email_address
- Used #index to find index of '@'
- Used slice to obtain characters between @ and .com (.com is last 4 digits so range ...-4)
- Failed as still giving @, updated local variable at with +1, now working

titleize_a_string
- Split string into array, splitting at each space (' ')
- Capitalized first word using #capitalize! to overwrite
- Iterated over array using #each, capitalizing each word with capitalize!
- Added case statement to check for 'a', 'the', and 'and', which are ignored
- Rejoined array into string, adding spaces

check_a_string_for_special_characters
- Used regexp to check for non-word character. Regex taken from http://ruby-doc.org/core-2.1.1/Regexp.html
- Added if statement to return true or false depending on whether non-word character found

select_elements_starting_with_a
- Initial plan: iterate over array with #each, removing all elements starting with a
- Unable to figure out regex or other method to check first letter
- Searched on google, found https://stackoverflow.com/a/40556949/7542912
- Understood immediately, adapted for this method

select_elements_starting_with_vowel
- As above, attempted to use regexp (failed, no implicit conversion of regexp to string)
- Attempted to use || operator, failed and only triggered on first letter
- Attepted to use , in place of ||, test still failing but appears to be error on test (extra ' at the end of angela, plus elements have been joined into string). Edited test to remove extraneous '  and added .join(' ') to pass test
- Replied to conversation with Jordan Poulton on pull request to advise of issue with test

remove_nils_from_array
- As above, amended select block to ignore nil

remove_nils_and_false_from_array
- Works by using the same select block as above, except select amended to select!
- Refactored due to DRY

reverse_every_element_in_array
- Used #each to call #reverse! on each element of the array

all_elements_except_first_3
- Started to research Array#shift, in ruby docs refers to array.slice!(0, n)
- Adapted array.slice!(0, n)

add_element_to_beginning_of_array
- Used #unshift() to add element to the beginning of the array

shortest_word_in_array
- Initial plan: create an array with the lengths of each element in the provided argument, then return the shortest
- Created lengths array, populated by calling #each on the provided argument, using #push to add the length of each element in order to the lengths array
- Found the index of the minimum length element in the provided argument, returned this element

longest_word_in_array
- As above, substituting #max for #min

total_of_array
- Iterated over provided argument with #each, adding each element to a local variable named total, returned total

average_of_array
- As above, then divided by length of the array, then rounded.
- Initial local variable is a float instead of an integer to allow rounding later

get_elements_until_greater_than_five
- Initial idea: #shift array[0] until array[0] > 5
- Coded, tested. Failed test returned nil
- returned the new array

get_all_letters_in_array_of_words
- Initial idea: split array of words into array of letters then alphabetize
- Split array by iterating using #each, though this left me with a multidimensional array
- Ruby docs suggested flattening multidimensional array using flatten, tried and it worked, so I called sort on the resulting array

format_date_nicely
- Tried to use a range on the date, failing as not a string so converted to string
- returned string rearranged to give date nicely formatted

**get_upper_limit_of**
- Assuming range will be .. range rather than ... range (can adjust if necessary)
- Saw note about String#partition in previous research so looked it up in ruby docs, then called the tail section(last) of the range which was converted to a string.
- Test requires output to be integer so added #to_i
- Ended up with: range.to_s.partition('..').last.to_i
- Discovered Range#end when researching next challenge, updated and amended

is_a_3_dot_range?
- Tried to use #match, however while researching how to use it discovered Range#exclude_end?

square_root_of
- Squared numbers are to power 2 (number**2), square roots are to power 0.5 (number**0.5)

call_method_from_string
- Have previously used #send, attempted but was giving undefined method error
- Research led me to https://stackoverflow.com/a/31893465/7542912
- Amended to eval, works

is_a_2018_bank_holiday
- called argument to confirm format of argument
- test failed, looked into it and the test has 2014 listed when it should have had 2018, amended
- One way of doing this is to have an array of all the bank holiday dates in string format, then matching the argument (converted to string) to confirm if it == one of the objects
- Another way is a case statement
- Wrote case statement, worked