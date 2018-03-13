**General Approach**

* irb for command line testing of each test
* repli.it for block and method testing
* Checking questions_spec.rb for test requirements
* Using the docs
https://ruby-doc.org/core-2.5.0/Array.html
https://ruby-doc.org/core-2.5.0/String.html
https://ruby-doc.org/core-2.5.0/Range.html 
* Codecademy for Ruby
* Chris Pine's Learn to Program
* Stackoverflow!
* https://www.tutorialspoint.com/ruby/ruby_loops.htm
* Re-evaluating code afterwards 

**Q4. swap the keys and values in a hash.**
* Googled swapping key:value pairs
* https://ruby-doc.org/core-2.5.0/Hash.html#method-i-invert 

**Q5.turn an array (with an even number of elements) into a hash**
* Googled converting Array to Hash
* Originally tried the simpler solution
https://ruby-doc.org/core-2.5.0/Array.html#method-i-hash 
But this fails the rspec test
* https://ruby-doc.org/core-2.5.0/Array.html#method-i-flatten
* Interesting read here
https://stackoverflow.com/questions/28302482/hash-vs-to-h-are-they-the-same-and-if-so-which-is-better
* Tried a few difficult variations on here but only the .flatten passed the test. Not sure why .to_h doesn't work.

**Q6. Summing hash keys and values** 
* Found a similar solution through StackOverflow. Worked but I think it uses a Rails approach which then failed the rspec test. 
* Did some more searching and practicing with irb and the inject method. 
* Found it was simpler to pull out the keys and values separately, uses the inject method, then sum them separately. 

**Q7. Remove Capital letters from String**

* Search for String methods.   
* Found the .scan() methods, using regex was easy to extract using .scan(/[a-z]/) but this returns a split array and removes the space too
* Added in (/[a-z]|[ ]/).join 
* .delete looks a lot simpler!

**Q8. Split strings in half**

* Found the .slice method and joined with the .length method. 
* Needed to do (.length - 1) as the array starts from 0  which gave the wrong value when dividing by 2
* May need to check to ceil this value? 

**Q9. Symbol to String**

* to_s ? 
* Seems to simple but passes tests
* TODO read up on ruby :symbol

**Q10 Return domain name from email address**

Few different approaches to this problem.

1. Remove everything before the @ symbol using .slice and .index and regex 
2. Remove everything from the .com to end of range (-1)

Practised a lot with String methods here to find different ways to do it. 

**Q11 Titalize a string**

Thought process...
* Capitilise each work is 'easy' using .capitalize method
* Add a way of ignoring words (array)
* Add functionality to still capitalise the first word
* Both sentence and ignore words are arrays of words. 
* Need to iterate over both - don't fully understand the ruby syntax here yet. Googled a lot!
* .map produces a new array of the new sentence with capitals, then add in the functionality
to ignore words
* Googling showed me the tertiary form for Ruby If statement

Found string literals
%w[] produces a word array, using this for ignores

1. Split String into Words
2. Capitalize first word words[0]

This one stumped me for a long time. Should have spent more time breaking down the process into individual stages before writing code syntax I didn't understand properly.

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
* tried to use a similar solution to the above but it doesn't work how I thought
* Found way to check if variable is nil

**discard the first 3 elements of an array**
* This seemed too easy to be proper solution
array[((array.length ) / 2)..-1]
* I think it should still involve delete or push

**get all the elements in an array, up until the first element which is greater than five**

possible solution: 
* create new empty array
* iterate through current array
* if < 6 then add to new array
* stop after first one << how ?!

Found the .take_while which appears to do a while loop over an array. 
https://ruby-doc.org/core-2.5.0/Array.html#method-i-take

Don't fully understand so worked on iterating the array

**get all the letters used in an array of words and return it as a array of letters, in alphabetical order**
* Practised a lot on repl.it
* Tried doing array.each then .split but it splits the words into characters
* Realised it needed to be one long words *before* splitting and sorting

**Tougher Ones**

**call an arbitrary method from a string**
* I don't understand what this question is asking for
* Test case doesn't help me understand it
Breaking it down...
1. What is an arbitrary method? A custom made one? Not in ruby docs? (https://pine.fm/LearnToProgram/chap_08.html)
2. How do you call a method? usually .here_is_my_method or calling like def myMethod then myMethod
3. Googling 'call method from string' shows answers using .send method
> A dot is used to call a method on an object.

* How does this test case match question?
```ruby 
a = call_method_from_string('Array.new(5, 0)')
    expect(a).to eq [0, 0, 0, 0, 0]
```
* `Array.new(5, 0)` creates the `[0, 0, 0, 0, 0]`? 

TODO come back to this

**return true if the date is a uk bank holiday for 2014**
* https://www.gov.uk/bank-holidays - this is a table of UK holidays
* this formatting: 

| Date (DD MMMM) | Day (Name) | Name of holiday |
|-----|:-----|-----:|
| 30 March |Friday |Good Friday |
|2 April	|Monday|	Easter Monday
|7 May	|Monday|	Early May bank holiday
|28 May	|Monday	|Spring bank holiday

* Test :
```ruby
 a = is_a_2014_bank_holiday?(Time.new(2018, 8, 27))
    b = is_a_2014_bank_holiday?(Time.new(2018, 8, 26))

    expect(a).to be true
    expect(b).to be false
```

* parameter is question is `date`
* Lookup `date` from table? 
* In 'real world' probably use API to do a date check
* For test could provide dates (like with ignored words earlier), then check if they exist in string/date array



**given your birthday this year**

* Provide birthday this year as variable
* For each year from now check day of birthday
* `365 % 7` adds 1 day per year, 2 for leap year - do leap year check? 
* Get day of birthday for each year - what is birthday in 2018, then keep add 1 day until day = friday
* iterate birthday until day matches, get year
* return date a cap string? 
* Test requests return as year number, i.e. 2020 date will be Friday
* 

**in a file, total the number of times words of different lengths appear**