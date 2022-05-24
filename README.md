# Stock-Picker
Common problem of finding the biggest difference in array
assuming the smaller number hast to come first
returns an array with the smaller index first

This was one I haven't found (what I think) is a very elegant solution
I was hoping to be able to use something like the reduce method to track the greatest difference,
but it ended up not being able to hold onto enough values (or I didn't see how)
IE: track the smallest current number, the greatest number so far, the difference, and be able to hold onto those values in case a new smallest number appears BUT there isn't a larger number after this "new smallest number" to establish a new largest differental

prices.combination(2).max_by{|buy, sell| sell - buy }
would work if only I could hold on to the index (I know I could refind it, but how to handle a value showing up more than once?)

I'm stuck using a each with index loop to traverse the whole array unless I think of something better eventually

Looking at some of the other solutions, mine doesn't seem too far off, but I'm still inclined to
not really love it, compared to the other solutions I've come up with so far in ruby.
