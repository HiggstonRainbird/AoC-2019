# Mathematica Advent of Code
# 2019, Day 9

## Optcode Reference List

### Optcodes

1. abc01 c b a -> a = b + c
2. abc02 c b a -> a = b * c
3. a03 -> a = input
4. a04 -> output = a
5. ab05 b a -> if b == 0, jump to a
6. ab06 b a -> if b ≠ 0, jump to a
7. abc07 c b a -> if c < b, a = 1, a = 0
8. abc08 c b a -> if c == b, a = 1, a = 0
9. a09 -> relativeBase += a
99. Halt.

### Parameter Modes

0. **Absolute Position Mode**: Interpret value as absolute position in memory.
1. **Immediate Mode**: Interpret value as integer.  Cannot be written to.
2. **Relative Position Mode**: Interpret value as relative position in memory.

## Poem: Mission Accomplished

	A 53-bit integer
	Can now be handled fine.
	We have have a base that's relative
	And we can run a quine.
	
	We can make threads in parallel
	And loop them without fuss.
	References outside the code?
	They pose no threat to us.
	
	Ten optcodes and three modes, to boot - 
	We've realized every one. 
	We've done four Intcode problems now...
	
	And now, I'm sure, we're done.
