This is an exercise to practice Test Driven Development. An example of how TDD
works can be found here: http://guides.railsgirls.com/test-driven-development
<br/>
<br/>
We will be recreating Array methods from scratch(ish). So we're creating a fake
class (MyArray) and creating useful functionality, trying not to lean on existing
Array methods.
<br/>
<br/>
For example:
<br/>
Say we have `array = [1,2,3]`. We want to check the length of array. Instead
of just calling `array.length`, we're going to create a method that does what the
length method does behind the scenes. So that calling `array.my_length` will
return 3 as expected.
<br/>
<br/>
With a partner or alone, pick a method to implement and start with the smallest
test that fails, make it green, then incrementally make it smarter.
<br/>

Iteration 0:
<br/>
* my_push (takes a parameter and adds it to the array. equivalent to Array#push)
* my_empty? (returns boolean, equivalent to Array#empty?)
* my_include? (returns boolean, equivalent to Array#include?)
* my_length (returns count of items in an array, equivalent to Array#length)
<br/>

Iteration 1:
<br/>
* my_delete (takes a parameter and removes it from the array. equivalent to Array#delete(obj))
* my_delete_multiple (takes parameters and removes them from the array)
* my_push_unique (pushes to the array only if it doesn't already exist in the array)
* my_push_multiple (pushes more than one item to the array at a time)
<br/>

Iteration 2:
<br/>
* Do everything you did in Iteration 1 but with a set instead of an array
