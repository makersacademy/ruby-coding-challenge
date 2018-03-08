#Q1 -

How to round a float - .round - does this round it up? No.
How to round up a float to the next integer - .ceil - does this round it up? Yes
Create tests using method and inputting different floats as an argument

#Q2 -

How to round a float - .round.
Does it round it down? - no
How to round float to integer below - .floor
Test with different arguments

#Q3 -

How to tell if a number is pos or neg?
Neg - less than 0
Pos - more than 0
Use if else statement
Test with different arguments

#Q4 -

Identify what the keys and values are
How to swap them around - .invert (found on Stack Overflow)
Does it work?
Test with different arguments

#Q5 -
Go through each key and value, and add them together
How to go through each key and value? Try .each
Add key and value together
How to create a running total of value? Define a variable and use += operator for total
Test with different arguments

#Q6 -
How to add a new key value pair to a hash? Yes - hashname[key] = value
How to do this for each pair of items in an array? Not sure how to isolate pairs. Need to research
Is there a method which can do this? Need to research
How to turn nested paired arrays into a hash? Need to research
Pairing up items in an array : try arrayname.each_slice(2).to_a
Turning nested array with paired items into hash: try .to_h
Test with different arguments

#Q7 -
Need to isolate characters - split string into array by character - chars.to_a
Iterate through each item in array with .each
How to tell if character is capitalised / uppercase? If else statement, possibly using upcase, downcase
If downcase or whitespace, add to new string, if not, don't add it
return new string
Test with different arguments

#Q8
COME BACK TO THIS
Return length of a string using .length
Convert integer to a float
Divide length by two and round up using .ceil. Assign integer to new variable
Split string into an array by characters
Use loop, where if i is less than or equal to new variable, add to new string


#Q9

Aware of .to_s (to string) method. Check if it can convert a symbol to a string
Test with different arguments

#Q10

Identify where @ is located, and remove everything before it. Assign to a variable
Take variable and identify where .com is located and remove everything after it
Assign to new variable and return it

#Q11
#COME BACK TO THIS
Aware there is .capitalize method. However this only does it for first word in a string
Split words into array.
Use if statement to apply .capitalize if array element does not include and, or, a
Use .include on first item of array to check if it contains and, or, a
If it does, capitalize. If not, leave as is as it will already be capitalized
appears include does not take multiple arguments. Stack overflow returned .present
Join array together to create string
Return strings
Test with different arguments


#Q12
#COME BACK TO THIS
Split string into an array by characters
Identify special characters - anything that isn't alphanumeric -
Use if else statement to identify if array contains identified special characters.
If yes, return true. If not return false


#Q13
Iterate over each item in array, isolating the first character (bracket notation)
Use if statement to assess whether character at index 0 (first letter) is "a" or "A"
If this is true, add the array element to a new array.
If it is false, do not add to new array
Print new array
Test with different array elements in argument

#Q14
#TO COMPLETE
Similar approach to previous question
Iterate over each item in array, isolating the first character (bracket notation)
Use if statement to assess whether character at index 0 (first letter) is a vowel
If this is true, add the array element to a new array.
If it is false, do not add to new array
Print new array
Test with different array elements in argument

#Q15
Similar approach to question 13
Iterate over each item in array
Use if statement to see if array item is not equal to nil.
If not equal to nil, add to new array and test
Test with nil, booleans and strings in array

#Q16

#Q17

#Q18
Aware that shift removes first element of an array
Therefore can create method, which shifts first item in array three times. Use .times method
Print new array
Test with different arrays as arguments

#Q19
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

#Q22
Create a variable (total) and set it to 0
Iterate through an array (using .each).
Determine if array element is numeric.
If it is, use += to add the number to total
Return value of total
Test using different arrays as arguments

#Q23

#Q24
#TO COMPLETE
Aware of breaks and loops
Iterate through array using .each
if array element is less than 6, print it, until reaching the first element array which is greater than 6.
Break loop

Note to self - check .any?

#Q25
Iterate through array (use .each), and return each letter as a character (chars.to_a), assigning it to a new array
Aware that items can be sorted by .sort. Apply this to array with sort!
Return array
Test using different arrays as arguments


#Q26

#Q27

#Q28

#Q29
Remind self what a square root is
Aware that there is a square root method
Google search returns Math.sqrt(x)
Replace x with number argument in square_root_of method
Test using various numbers as arguments
