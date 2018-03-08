## General Approach

Typically I would type the argument in the method with no additional code to see what comes out in the test, then I would type a line or add a method and test again. If that broke the test or did something I didn't expect I would take a closer look and research it, see below.

### Workflow:
1. Test
2. Type a minor bit of code, hypothesise what I expect will happen
3. Test again, did it do what I expected?
	- Yes? 
		- Repeat from 2 until method completely works and test returns a green dot
		- Refactor if possible.
	- No? 
		- Look at the error code (if present), amend accordingly
		- If no error code or can't figure it out, research reason why it doesn't work as expected
		- Repeat until it works as expected
		- Return to step 2 until method completely works and test returns a green dot, then refactor
4. Commit the answer, push up to my repo
5. Move onto the next challenge question and repeat from step 1 until complete
