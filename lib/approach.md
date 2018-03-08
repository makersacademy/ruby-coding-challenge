#Q1 - first draft
How to round a float - .round - does this round it up? No.
How to round up a float to the next integer - .ceil - does this round it up? Yes
Create tests using method and inputting different floats as an argument

#Q2 - first draft
How to round a float - .round.
Does it round it down? - no
How to round float to integer below - .floor
Test with different arguments

#Q3 - first draft
How to tell if a number is pos or neg?
Neg - less than 0
Pos - more than 0
Use if else statement
Test with different arguments

#Q4 - first draft
Identify what the keys and values are
How to swap them around - .invert (found on Stack Overflow)
Does it work?
Test with different arguments

#Q5 - first draft
Go through each key and value, and add them together
How to go through each key and value? Try .each
Add key and value together
How to create a running total of value? Define a variable and use += operator for total
Test with different arguments

#Q6 - first draft
How to add a new key value pair to a hash? Yes - hashname[key] = value
How to do this for each pair of items in an array? Not sure how to isolate pairs. Need to research
Is there a method which can do this? Need to research
How to turn nested paired arrays into a hash? Need to research
Pairing up items in an array : try arrayname.each_slice(2).to_a
Turning nested array with paired items into hash: try .to_h
Test with different arguments

#Q7 - first draft
Need to isolate characters - split string into array by character - chars.to_a
Iterate through each item in array with .each
How to tell if character is capitalised / uppercase? If else statement, possibly using upcase, downcase
If downcase or whitespace, add to new string, if not, don't add it
return new string
Test with different arguments

#Q8
#TO COMPLETE
Return length of a string and convert integer to float.
If length is odd, dividing length by half will return whole number, therefore convert to float
Divide length by two and round up to nearest integer - use .ceil.
Assign integer to new variable for use later (halfnum)
Split string into an array by characters.
To iterate over each letter in word (use .each) comparing array index with (halfnum)
If index number is less than half num, add letter to new array
Convert new array to string and puts to console
Test with different strings as argument
Add if else statement so if string.length is even, divide by 2
If not, just divide by 2



#Q9 - first draft
Aware of .to_s (to string) method. Check if it can convert a symbol to a string
Test with different arguments

#Q10 - first draft
Identify where @ is located, and remove everything before it. Assign to a variable
Take variable and identify where .com is located and remove everything after it
Assign to new variable and return it

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


#Q12
#TO COMPLETE
Split string in by characters - into an array
Identify special characters - anything that isn't alphanumeric -
Use if else statement to identify if array contains identified special characters.
If yes, return true. If not return false
Not familiar with regex, but Google search shows how to identify alphanumeric characters http://bit.ly/2IdbtaH


#Q13 - first draft
Iterate over each item in array, isolating the first character (bracket notation)
Use if statement to assess whether character at index 0 (first letter) is "a" or "A"
Each wouldn't work here, as we don't need to go through each letter
If this is true, add the array element to a new array.
If it is false, do not add to new array
Print new array
Test with different array elements in argument

#Q14
#TO COMPLETE
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
Iterate over each item in array
Use if statement to see if array item is not equal to nil.
If not equal to nil, add to new array and test
Test with nil, booleans and strings in array
#NOTE to self - when refactoring, check .nil?

#Q16 - first draft
Everything in Ruby is true except false and nil.
Therefore using similar approach to above question
Use if statement and OR conditional, checking if array element is true
Came across .nil on Stack Overflow - considering if it can be used here
Source: http://bit.ly/2IbFI1W
If it is, add to new array and return it
Test with nil, booleans and strings in array


#Q17 - first draft
Isolate each item of the array. How? Using .each
Already aware that .reverse can be used on strings.
Check if .reverse! can be used to mutate original array - This works
Print array
Test with different arrays
#NTS - refactor to ensure item in array are strings?

#Q18 - first draft
Aware that shift removes first element of an array
Therefore can create method, which shifts first item in array three times. Use .times method
Print new array
Test with different arrays as arguments

#Q19 - first draft
Aware of the unshift method, which adds element to the beginning of an arrays
Add element as an argument in unshift method, using array parameter
Print new array
Test with different arrays and elements as arguments

#20
#COME BACK TO THIS
Aware of the .length method to count characters in a string

Need to compare it

Create new variable (short) with infinity assigned to it
If length of array item is less than short, assign length of array item to short
Iterate through array
Short should equal shortest length

short to infinity if possible, if length of array element is more than 0, assign value to

#Q21
Note: Aware of the .length method to count characters in a string
Compare length of arrays to each together
- Go through each item in array - use .each
Set empty num variable, assigned value of 0
Compare array element length to num variable.
Keep note of the longest length to compare each item to
-If larger than current value of num, assign array element length to num
Keep note of array element with longest length
- assign array element value to word variable if conditions above are true
Print the word associated with longest length
- Stored in word variable
Test with different arrays as argument


#Q22 - first draft
Create a variable (total) and set it to 0
Iterate through an array (using .each).
Determine if array element is an integer before attempting to add to total.
If it is, use += to add the number to total
Return value of total
Test using different arrays as arguments
What if number is not an integer, but a float? Found on Stack Overflow that Numeric can be used instead of Integer

#Q23 - first draft
Average number is sum of numbers, divided by number of items
Add all numbers in the array - try .each and add numbers to a new variable
Divide the total by number of items - find number of items in array. Try .length
Round total to nearest integer - try .round .to_i - returns 16, not 17
Convert total to float so when divided by array.length, float is returned and can be rounded
Round average to nearest integer - .round
Test using different arrays as arguments

#Q24 - first draft
Go through each item in the array and check if it is greater than 5
If lower than 5, add to new array.
If it is true, stop checking other array elements.
Aware of breaks in loops. Assess whether they can be used here. Result - this works
Test using different arrays as arguments


Note to self - check .any?

#Q25 - first draft
Go through array (use .each)
Return each letter as a character (chars.to_a)
Assign it to a new array
Aware that items can be sorted by .sort. Apply this to array with sort!
print array
Test using different arrays as arguments

BONUS QUESTIONS
#Q26

#Q27

#Q28

#Q29 - first draft
Reminder of what a square root is. Result of a squared number
Aware that there could be a square root method
Google search returns Math.sqrt(x)
Replace x with number argument in square_root_of method
Test using various numbers as arguments

TOUGHER QUESTIONS
