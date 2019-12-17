# Mathematica Advent of Code    
# 2019, Day 16
      
## Poem: The Trick™ (With Apologies to Gilbert and Sullivan)

	When you're writing some code in your humble abode, after getting one star with no trouble,
	Then its sequel might seem to be on the same theme, and require the same code but double.
	But you'll quickly be scared (what with order n-squared) of the ten-thousand-fold repetition,
	And you know your brute force, though compiled (of course), will still lose in a war of attrition.
	For The Trick™ for part two has just nothing to do with the star that you'd gotten just previous,
	And though coding's a breeze, with The Trick™ up your sleeves, if bereft, you'll just have to get devious:
	
	From the last digit first, do a `cumsum` reversed, 
	then reverse it all back and add `1` to the stack,
	and make sure your offset hasn't drifted as yet 
	and then do it again till the `Mod[]`s hurt your brain 
	and go back and unplug when your-off-by-one bug 
	wrecks your program until you've just lost all the thrill
	and you've fallen behind with about half a mind 
	to just quit and go drowning your sorrow,
	
	But the program is done, and the second star's won! 
	And the poem's complete, and the challenge is beat
	 
	...right until we get Intcode tomorrow! 
