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
- Used range to obtain characters between @ and .com (.com is last 4 digits so range ...-4)
- Failed as still giving @, updated local variable at with +1, now working.