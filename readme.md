## Shades of Prime

[Exploring the Patterns in the last digits of Prime Numbers](http://www.nature.com/news/peculiar-pattern-found-in-random-prime-numbers-1.19550)

Prime numbers are less random than mathematicians used to think they were.  
This is immediately evident when looking at the frequency of the last digits of consecutive primes.

### Code

I wrote some code in Mathematica. You can download it [here](shades-of-prime.m).

### Prime Pairs

Note how the combinations 11, 33, 77 and 99 occur less frequently than other digit combos.  
![](shades-of-prime-2.png)

### Prime Pairs (Base 16)

Using base 10 is somewhat arbitrary.  
Let's look at higher bases which are powers of two, for example base 16.
Note, that there is some kind of gradient going on here!  
Also there seem to be ripples inside the gradient

![](shades-of-prime-3.png)

### Prime Pairs (Base 256)

Let's pick even higher bases to see if the gradient persists. 
Indeed: much gradient, still ripples!

![](shades-of-prime-4.png)


### Prime Triples (Base 256)

And here's a visualization of triples of primes...

![](shades-of-prime-5.png)

