[insert introduction here]

## Contents

 - [Challenge questions](#challenge)
 - [Bonus questions](#bonus)
 - [Tougher questions](#tougher)

----------
----------

## Challenge questions

<a name="#challenge"></a>
### *Q1 - round up a float up and convert it to an Integer, so 3.214 becomes 4*
***How to round a float?*** <br />
	-- Aware of .round method. Does this round it up? No.<br />
***How to round up a float to the next integer***<br />
	-- Google search returns .ceil method. This works<br />
***Create tests using method and inputting different floats as an argument***<br />

----------


### *Q2 - round down a float up and convert it to an Integer, so 9.52 becomes 9*
***How to round a float?*** <br />
-- Aware of .round method. Does it round it down? - No <br />
***How to round float to integer below*** <br />
-- Google search returns .floor method. This works <br />
***Test with different arguments*** <br />

----------

### *Q3 - first draft*
***How to tell if a number is positive or negative?*** <br />
-- Negative is less than 0. Positive is more than 0 <br />
***Assess if number is higher or lower than 0*** <br />
-- Use if else statement <br />
***Consider outcome if number is 0*** <br />
***Test with different arguments*** <br />

----------

### *Q4 - first draft*
***Identify what the keys and values are in the hash***
***How to swap them around?***
-- Stack Overflow search returned .invert. This works
***Test with different arguments***

----------

### *Q5 - first draft*
***Go through each key and value, and add them together*** <br />
***How to go through each key and value?*** <br />
-- Try .each, adding each and value together <br />
***How to create a running total of value of keys and values?*** <br />
-- Define a variable and use += operator for total <br />
***Test with different arguments*** <br />

----------

### *Q6 - first draft*
***How to add a new key value pair to a hash?*** <br />
-- Aware that hashname[key] = value does this <br />
***How to do this for each pair of items in an array? Does method exist?*** <br />
-- Stack Overflow returned the following for pairing up items in array:
  arrayname.each_slice(2).to_a <br />
-- Turns pairs into nested arrays <br />
***Turning nested array with paired items into hash:*** <br />
-- Google search returned .to_h. This works <br />
-- Puts new hash <br />
***Test with different arguments*** <br />

----------

### *Q7 - first draft*
***Isolate characters to assess them*** <br />
-- Split string into array by character - chars.to_a <br />
***Iterate through each item in array*** <br />
-- .each method does this <br />
***How to tell if character is capitalised / uppercase?*** <br />
-- Try If else statement, possibly using upcase, downcase to compare array items with <br />
-- If downcase or whitespace, add to new string. If not, don't add it <br />
***Return new string*** <br />
***Test with different arguments*** <br />

----------

### *Q8 - first draft*
***What is the number of string length*** <br />
-- Use .length <br />
-- Assign to variable num <br />
***Assess if number is odd of even and how dividing in half will affect number*** <br />
-- Dividing an odd integer in half will produce a decimal number however will return rounded down Integer <br />
-- converting num to a float, and using .ceil to round up instead. <br />
--Assign to new variable for use later (halfnum) <br />
***Assess each letter's position in a word individually and compare the position with halfnum*** <br />
-- convert each character to an array <br />
-- .each won't work here as index of array needs to be considered <br />
-- Google search returns .each_with_index <br />
-- If statement - if the index is less than halfnum, add array element to the end of new array <br />
***Return the first half of the word*** <br />
-- Convert new array to string and puts to console <br />
***Test with different strings as argument*** <br />

----------

### *Q9 - first draft*
***How to convert to a string?*** <br />
-- Aware of .to_s (to string) method. <br />
-- Check if it can convert a symbol to a string. This works <br />
***Test with different arguments*** <br />

----------

### *Q10 - first draft*
***Identify where @ is located, and remove everything before it.*** <br />
-- Stack overflow search returned partition & last methods. <br />
-- Partition: Creates an array, splitting at specified character <br />
-- Last: returns value of last array element (domain and .com) <br />
-- Assign result to a new variable <br />
***Take new variable and identify where .com is located and remove everything after it*** <br />
-- Aware of split method. Does this work here if (".com" is parameter?) - Yes <br />
***Return domain*** <br />
***Test with different email addresses as arguments*** <br />

----------

#Q11
#TO COMPLETE
Isolate words  - split words into array. <br />
Aware there is .capitalize method. However this only does it for first word in a string <br />
Apply .capitalize if array element does not include and, or, a - try if statement <br />
Use .include on first item of array to check if it contains and, or, a <br />
If it does, capitalize. If not, leave as is as it will already be capitalized <br />
appears include does not take multiple arguments. Stack overflow returned .present <br />
Join array together to create string <br />
Return strings <br />
Test with different arguments <br />

----------

### *Q12 - first draft*
***Identify special characters (not alphanumeric)*** <br />
-- Google search returns Stack overflow link with /\W/ === string for comparing a string (http://bit.ly/2FoBO8b) <br />
-- this works <br />
***Assess each letter to check for special characters*** <br />
-- no longer needed <br />
***Return true if string contains special characters*** <br />
-- with if else statement
***Test with different arguments*** <br />

----------

### *Q13 - first draft*
***Check each array element and check first character of value*** <br />
-- Iterate over each item (.each) <br />
-- Isolate the first character (bracket notation) <br />
***Assess whether character at index 0 is "a" or "A"*** <br />
-- Use if statement with or <br />
***If true, add the array element to a new array. If false, do not add to new array*** <br />
***Print new array*** <br />
***Test with different array elements in argument*** <br />

----------

### *Q14*
#TO COMPLETE

determine vowels to check for <br />
-- create new array alled vowels <br />
check first letter in item in array, see if it matches any of the items in vowels <br />
if it does, add to new_array, if not, disregard it <br />


How to check if string starts with letter <br />
http://bit.ly/2HkpiD6 <br />

Similar approach to previous question <br />
Go over each item in array, isolating the first character (bracket notation) <br />
Each wouldn't work here, as we don't need to go through each letter <br />
Use if statement to assess whether character at index 0 (first letter) is a vowel <br />
If this is true, add the array element to a new array. <br />
If it is false, do not add to new array <br />
Print new array <br />
Test with different array elements in argument <br />

----------

### *Q15 - first draft*
Note: Similar approach to question 13 <br />
***Check each array element to see if it contains nil*** <br />
-- Iterate using .each <br />
***Check if array element is not equal to nil*** <br />
-- Use if statement <br />
***If not equal to nil, add to new array. When complete, print new array with nil omitted*** <br />
***Test with nil, booleans and strings in array*** <br />

----------

### *Q16 - first draft*
Note: Everything in Ruby is true except false and nil. <br />
***Check each array element to see if it contains nil*** <br />
-- Iterate using each. Assess using if statement <br />
-- Include or statement as both nil and false need to be considered <br />
-- Came across .nil on Stack Overflow - considering if it can be used here. This works <br />
-- Source: http://bit.ly/2IbFI1W <br />
***If it doesn't contain nil or false, add to new array and return it*** <br />
***Test with nil, booleans and strings in array*** <br />

----------

### *Q17 - first draft*
***Assess each array element*** <br />
- Use .each to isolate items <br />
***Reverse contents in array element*** <br />
- Aware that .reverse method exists <br />
- Test if .reverse! can be used to mutate original array - This works <br />
***Print array with reversed values*** <br />
***Test with different arrays as arguments*** <br />

----------

### *Q18 - first draft*
***Access first element of the array and remove it*** <br />
- Aware that .shift removes first element of an array <br />
***Do this multiple times, so first 3 items are removed*** <br />
-- Aware of .times method for repetition. This works <br />
***Print new array*** <br />
***Test with different arrays as arguments*** <br />

----------

### *Q19 - first draft*
***How to add an element to an array at the front*** <br />
-- Aware of the unshift method, which takes the new element argument <br />
-- Add new element as an argument in unshift method <br />
-- Value retrieved from array parameter <br />
***Print new array*** <br />
***Test with different arrays and elements as arguments*** <br />

----------

### *Q20 - first draft*
***Note: Approach similar to #Q21 below. Differences:*** <br />
- assigning num variable the length of the first array element to have something to compare to <br />
- if array element is less in length than first array element, assign value to num <br />
- and assign array element as word variable <br />
***When testing, with "a" as shortest word in array, word variable returns blank*** <br />
- Solution - assign first element array as word variable. This will be reassigned if other array elements have a shorter length <br />
***Test again with different arrays and elements as arguments*** <br />

----------

### *Q21 - first draft*
***How to compare length of arrays to each together*** <br />
-- Aware of the .length method to count characters in a string <br />
-- Go through each item in array - use .each <br />
-- Set empty num variable, assigned value of 0 <br />
-- Compare array element length to num variable. <br />
***How to keep note of the longest length to compare each array element length to*** <br />
- If larger than current value of num, assign array element length to num <br />
- Result - largest number will always be assigned to num <br />
***How to keep note of array element with longest length*** <br />
- assign array element value to word variable if conditions above are true <br />
***Print the word associated with longest length*** <br />
- Stored in word variable <br />
***Test with different arrays as argument*** <br />

----------

### *Q22 - first draft*
***How to go through each item and add it to the next*** <br />
-- Need a container to hold sum of values <br />
-- Create a variable (total) and set it to 0 <br />
-- Iterate through an array (using .each). <br />
***How to determine if array element is an integer before attempting to add to total*** <br />
-- Stack overflow returns [item].is_a? Integer? <br />
-- Use if statement, to check type of value array item contains integer <br />
-- If it is, use += to add the number to total <br />
***Return value of total*** <br />
***Test using different arrays as arguments*** <br />
***What if number is not an integer, but a float?*** <br />
-- Found on Stack Overflow that Numeric can be used instead of Integer. Refactored method <br />

----------

### *Q23 - first draft*
Note to self: Average number is sum of numbers, divided by number of items <br />
***How to add all numbers in the array?*** <br />
-- try .each, adding numbers to a new variable <br />
***How to divide the total by number of items?*** <br />
-- find number of items in array. Try .length <br />
***How to round total to nearest integer*** <br />
-- try .round .to_i - returns 16, not 17 <br />
***How to make convert integer to decimal number*** <br />
-- Reason: it can return decimal number if result of being divided does not return a whole number <br />
-- Convert total to float so when divided by array.length, float is returned and can be rounded <br />
***Round average to nearest integer*** <br />
-- try .round
***Test using different arrays as arguments*** <br />

----------

### *Q24 - first draft*
***How to go through each item in the array and check if it is greater than 5*** <br />
-- Use .each <br />
***If lower than 5, add to new array.*** <br />
***If array element is larger than 5, stop checking other array elements.*** <br />
-- Aware of breaks in loops. Assess whether they can be used here. <br />
-- Result - this works <br />
***Test using different arrays as arguments*** <br />

----------

### *Q25 - first draft*
***Assess letters individually*** <br />
-- Go through array elements (use .each) <br />
- Return each letter as a character (chars.to_a) <br />
***How to assign characters a new array*** <br />
***How to sort array in alphabetical order*** <br />
-- Aware that items can be sorted by .sort. Mutate array using sort! <br />
***Print array*** <br />
***Test using different arrays as arguments*** <br />

----------
----------

## Bonus Questions
<a name="bonus"></a>
### *Q26 - incomplete*

----------

### *Q27 - first draft*
***What does a 2 dot range return?*** <br />
- Returns all numbers in range including first and last number <br />
***How to isolate numbers in range from each other?*** <br />
-- try isolating each number <br />
-- Use an array for this in combination with .each <br />
***How to isolate last number from others*** <br />
-- Test if .last will isolate last item - this works <br />
***Return last item*** <br />
***Test with different ranges as argument*** <br />
***Note -*** Refactored to remove each statement and replace with .to_a <br />
----------

### *Q28 -*
Note: 2 dot range returns all numbers in range. 3 dot does not return last number <br />
How to compare between range types?

----------

### *Q29 - first draft*
***What is a square root?*** <br />
-- Result of a squared number <br />
***Is there a square root method?*** <br />
-- Google search returns Math.sqrt(x) <br />
-- Replace x with number argument in square_root_of method <br />
***Test using various numbers as arguments*** <br />

----------
----------

## Tougher Questions
<a name="#tougher"></a>
#incomplete
