**General Approach**

* Using irb for command line testing of each test
* Checking questions_spec.rb for test requirements
* Using the docs
https://ruby-doc.org/core-2.5.0/Array.html
https://ruby-doc.org/core-2.5.0/String.html
* Remembered that ! has a big effect on methods

**Q6. Summing hash keys and values** 

* Found a similar solution through StackOverflow. Worked but I think it uses a Rails approach which then failed the rspec test. 
* Did some more searching and practicing with irb and the inject method. 
* Found it was simpler to pull out the keys and values separately, uses the inject method, then sum them separately. 

**Q7. Remove Capital letters from String**

* Search for String methods.   
* Found the .scan() methods, using regex was easy to extract using .scan(/[a-z]/) but this returns a split array and removes the space too
* Added in (/[a-z]|[ ]/).join 
 
** .delete looks a lot simpler! ** 

**Q8. Split strings in half**

* Found the .slice method and joined with the .length method. 
* Needed to do (.length - 1) as the array starts from 0  which gave the wrong value when dividing by 2
* May need to check to ceil this value? 

**Q9. Symbol to String**

* to_s ? 

**Q10 Return domain name from email address**

Few different approaches to this problem.

1. Remove everything before the @ symbol using .slice and .index 
2. Remove everything from the .com

Practised a lot with String methods here to find different ways to do it. 

**Q11 Titalize a string**

Found string literals
%w[] produces a word array, using this for ignores

1. Split String into Words
2. Capitalize first word words[0]

Had issues doing this one. Need to come back to understand it better.

**keep only the elements that start with a vowel**

* Similar to solution for *keep only the elements that start with an a* 
* Had to amend test in questions_spec, there was an erroneous ' character that caused the test to fail
* Tried to make a solution using a vowel array but couldn't work how out to compare TODO https://stackoverflow.com/questions/20205023/ruby-find-element-not-in-common-for-two-arrays looks like I am being too complex! 
* could use regex instead of hard-coding the values in the starts_with() method

**remove instances of nil (but NOT false) from an array** 
https://stackoverflow.com/a/29277773
This looks like the simplest solution I can find

**remove instances of nil AND false from an array**
https://stackoverflow.com/questions/252203/checking-if-a-variable-is-not-nil-and-not-zero-in-ruby
* tried to use a similar solution to the above but it doesn't work how I though
* Found way to check if variable is nil

**discard the first 3 elements of an array**
* This seemed to easy to be proper solution
array[((array.length ) / 2)..-1]
* I think it should still involve delete or push