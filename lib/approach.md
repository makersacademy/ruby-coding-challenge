# Approach Used

* I read the exercise very well 

* I looked at the expected solution on the spec to help me understand better.  

* I then tried to work on the logic, and I broke the problem in little steps, before with  Imperative programming  and then functional programming( with methods)

* where possible I did some refactoring.  

* I started from what I already knew from Javascript

* I worked on repl.it

* I run the tests with the command  rspec spec\questions_spec.rb

* I read the wrong outputs on the console. I tried to fix it and I started again. 

* I will try the bonus 

* I think there is a mistake on the test 
```ruby
   it 'select_elements_starting_with_vowel' do
    n = select_elements_starting_with_vowel %w[john david omar fred idriss angela]
    expect(n).to eq %[omar idriss angela']
  end

  ```

  ``` ruby
  expect(n).to eq %[omar idriss angela]

  ```

Another mistake test is_a_2018_bank_holiday
```ruby

# exercise 
def is_a_2018_bank_holiday?(date)
end

# but wrong year in method name (test)
  it 'is_a_2018_bank_holiday?' do
    a = is_a_2014_bank_holiday?(Time.new(2018, 8, 27))
    b = is_a_2014_bank_holiday?(Time.new(2018, 8, 26))

# is_a_2018_bank_holiday? ==! is_a_2014_bank_holiday?


```


* I used a lot **google**,  the **official documentation** and **stackoverflow** 


* END - HAPPY! || HAPPY END!