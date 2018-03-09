[insert introduction here]

#Q1 - first draft
How to round a float?
- Aware of .round method. Does this round it up? No.
How to round up a float to the next integer
- Google search returns .ceil method. This works
Create tests using method and inputting different floats as an argument

#Q2 - first draft
How to round a float?
- Aware of .round method. Does it round it down? - No
How to round float to integer below
- Google search returns .floor method. This works
Test with different arguments

#Q3 - first draft
How to tell if a number is pos or neg?
- Negative is less than 0. Positive is more than 0
Assess if number is higher or lower than 0
- Use if else statement
Consider outcome if number is 0
Test with different arguments

#Q4 - first draft
Identify what the keys and values are in hash
How to swap them around?
- Stack Overflow search returned .invert. This works
Test with different arguments

#Q5 - first draft
Go through each key and value, and add them together
How to go through each key and value?
- Try .each, adding each and value together
How to create a running total of value of keys and values?
- Define a variable and use += operator for total
Test with different arguments

#Q6 - first draft
How to add a new key value pair to a hash?
- Aware that hashname[key] = value does this
How to do this for each pair of items in an array? Does method exist?
- Stack Overflow returned the following for pairing up items in array: arrayname.each_slice(2).to_a
- Turns pairs into nested arrays
Turning nested array with paired items into hash:
- Google search returned .to_h. This works
- Puts new hash
Test with different arguments


#Q7 - first draft
Isolate characters to assess them
- Split string into array by character - chars.to_a
Iterate through each item in array
- .each method does this
How to tell if character is capitalised / uppercase?
- Try If else statement, possibly using upcase, downcase to compare array items with
- If downcase or whitespace, add to new string. If not, don't add it
Return new string
Test with different arguments


#Q8 - first draft
What is the number of string length
- Use .length
- Assign to variable num
Assess if number is odd of even and how dividing in half will affect number
- Dividing an odd integer in half will produce a decimal number however will return rounded down Integer
- converting num to a float, and using .ceil to round up instead.
- Assign to new variable for use later (halfnum)
Assess each letter's position in a word individually and compare the position with halfnum
- convert each character to an array
- .each won't work here as index of array needs to be considered
- Google search returns .each_with_index
- If statement - if the index is less than halfnum, add array element to the end of new array
Return the first half of the word
- Convert new array to string and puts to console
Test with different strings as argument


#Q9 - first draft
How to convert to a string?
- Aware of .to_s (to string) method.
- Check if it can convert a symbol to a string. This works
Test with different arguments


#Q10 - first draft
Identify where @ is located, and remove everything before it.
- Stack overflow search returned partition & last methods.
- Partition: Creates an array, splitting at specified character
- Last: returns value of last array element (domain and .com)
- Assign result to a new variable
Take new variable and identify where .com is located and remove everything after it
- Aware of split method. Does this work here if (".com" is parameter?) - Yes
Return domain
Test with different email addresses as arguments


#Q11
#TO COMPLETE
Isolate words  - split words into array.
Aware there is .capitalize method. However this only does it for first word in a string
Apply .capitalize if array element does not include and, or, a - try if statement
Use .include on first item of array to check if it contains and, or, a
If it does, capitalize. If not, leave as is as it will already be capitalized
appears include does not take multiple arguments. Stack overflow returned .present
Join array together to create string
Return strings
Test with different arguments


#Q12 - first draft
Identify special characters (not alphanumeric)
- Google search returns Stack overflow link with /\W/ === string for comparing a string (http://bit.ly/2FoBO8b)
- this works
Assess each letter to check for special characters
- no longer needed
Return true if string contains special characters
- use if statement here
Test with different arguments


#Q13 - first draft
Check each array element and check first character of value
- Iterate over each item (.each)
- Isolate the first character (bracket notation)
Assess whether character at index 0 is "a" or "A"
- Use if statement with or
If true, add the array element to a new array.
If false, do not add to new array
Print new array
Test with different array elements in argument


#Q14
#TO COMPLETE

determine vowels to check for
- create new array alled vowels
check first letter in item in array, see if it matches any of the items in vowels
if it does, add to new_array, if not, disregard it



Similar approach to previous question
Go over each item in array, isolating the first character (bracket notation)
Each wouldn't work here, as we don't need to go through each letter
Use if statement to assess whether character at index 0 (first letter) is a vowel
If this is true, add the array element to a new array.
If it is false, do not add to new array
Print new array
Test with different array elements in argument


#Q15 - first draft
Similar approach to question 13
Check each array element to see if it contains nil
- Iterate using .each
Check if array element is not equal to nil
- Use if statement
If not equal to nil, add to new array. When complete, print new array with nil omitted
Test with nil, booleans and strings in array


#Q16 - first draft
Note: Everything in Ruby is true except false and nil.
Check each array element to see if it contains nil
- Iterate using each. Assess using if statement
- Include or statement as both nil and false need to be considered
- Came across .nil on Stack Overflow - considering if it can be used here. This works
- Source: http://bit.ly/2IbFI1W
If it doesn't contain nil or false, add to new array and return it
Test with nil, booleans and strings in array


#Q17 - first draft
Assess each array element
- Use .each to isolate items
Reverse contents in array element
- Already aware that .reverse exists
- Test if .reverse! can be used to mutate original array - This works
Print array with reversed values
Test with different arrays as arguments


#Q18 - first draft
Access first element of the array and remove it
- I'm aware that .shift removes first element of an array
Do this multiple times, so first 3 items are removed
- Aware of .times method for repetition. This works
Print new array
Test with different arrays as arguments


#Q19 - first draft
How to add an element to an array at the front
- Aware of the unshift method, which takes the new element argument
- Add new element as an argument in unshift method. Value retrieved from array parameter
Print new array
Test with different arrays and elements as arguments


#Q20 - first draft
Approach similar to #Q21 below. Differences:
- assigning num variable the length of the first array element to have something to compare to
- if array element is less in length than first array element, assign value to num
- and assign array element as word variable
When testing, with "a" as shortest word in array, word variable returns blank
- Solution - assign first element array as word variable. This will be reassigned if other array elements have a shorter length
Test again with different arrays and elements as arguments


#Q21 - first draft
Compare length of arrays to each together
- Aware of the .length method to count characters in a string
- Go through each item in array - use .each
- Set empty num variable, assigned value of 0
- Compare array element length to num variable.
Keep note of the longest length to compare each array element length to
- If larger than current value of num, assign array element length to num
- Result - largest number will always be assigned to num
Keep note of array element with longest length
- assign array element value to word variable if conditions above are true
Print the word associated with longest length
- Stored in word variable
Test with different arrays as argument


#Q22 - first draft
Go through each item and add it to the next
- Need a container to hold sum of values
- Create a variable (total) and set it to 0
- Iterate through an array (using .each).
Determine if array element is an integer before attempting to add to total.
- Use if statement, to check type of value array item contains
- If it is, use += to add the number to total
Return value of total
Test using different arrays as arguments
What if number is not an integer, but a float?
- Found on Stack Overflow that Numeric can be used instead of Integer. Refactored method


#Q23 - first draft
Note to self: Average number is sum of numbers, divided by number of items
Add all numbers in the array
- try .each, adding numbers to a new variable
Divide the total by number of items
- find number of items in array. Try .length
Round total to nearest integer
- try .round .to_i - returns 16, not 17
Need to be a decimal number
- Reason: it can return decimal number if result of being divided does not return a whole number
- Convert total to float so when divided by array.length, float is returned and can be rounded
Round average to nearest integer
- .round
Test using different arrays as arguments


#Q24 - first draft
Go through each item in the array and check if it is greater than 5
- Use .each
If lower than 5, add to new array.
If array element is larger than 5, stop checking other array elements.
- Aware of breaks in loops. Assess whether they can be used here. Result - this works
Test using different arrays as arguments
#Note to self - check .any?


#Q25 - first draft
Assess letters individually
- Go through array (use .each)
- Return each letter as a character (chars.to_a)
Assign characters a new array
Sort array in alphabetical order
- Aware that items can be sorted by .sort. Mutate array using sort!
Print array
Test using different arrays as arguments



BONUS QUESTIONS
#Q26

#Q27 - first draft
What does a 2 dot range return?
- Returns all numbers in range including first and last number
How to isolate numbers in range from each other?
- try isolating each number
- Use an array for this in combination with .each
How to isolate last number from others
- Test if .last will isolate last item - this works
Return last item
Test with different ranges as argument
Refactored to remove each statement and replace with .to_a


#Q28 - first draft
Note: 2 dot range returns all numbers in range. 3 dot does not return last number
How to compare between range types?



#Q29 - first draft
What is a square root?
- Result of a squared number
Aware that there could be a square root method
- Google search returns Math.sqrt(x)
Replace x with number argument in square_root_of method
Test using various numbers as arguments


TOUGHER QUESTIONS
