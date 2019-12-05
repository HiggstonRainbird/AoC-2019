# Mathematica Advent of Code
# 2019, Day 5

## Code

I've started to make a proper `runIntcode[]` function, which takes in two mandatory parameters and one optional parameter:

**Mandatory:**

1. *inputList*: The list of integers comprising the Intcode program, separated by commas.
2. *inputValue*: The integer input value given for parameter `3`.

**Optional:**

* *"OutputSteps"*: If `True`, outputs a list of each line as it was read.

## Poem: Intcode vs. Sleep
	
	It's far too late to write a proper verse;
	My coding skills today were very slow.
	And while that's bad, what might be even worse:
	There are still ninety opcodes left to go!
