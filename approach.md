**General Approach**

* Using irb for command line testing of each test
* Checking questions_spec.rb for test requirements

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


