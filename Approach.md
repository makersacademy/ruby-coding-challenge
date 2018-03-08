Challenge 1

round up a float up and convert it to an Integer, so 3.214 becomes 4 def round_up_number(float) end

First I treated this as a pure calculator question to check .ceil. Reached 3.214.ceil.

but as a method should be the following which should work regardless of the float used I think.

def round_up_number(float) 
float.ceil 
end
