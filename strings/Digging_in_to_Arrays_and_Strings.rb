#Using Variable Method Arguments

def first_last(*list)
  list.each_with_index do |x, idx|
    if idx == 0 || idx == (list.length-1)
      puts x
    else
      next
    end
  end
end

#Using Map and Join
arr = %w(dog cat goat capybara)
arr.map!{ |animal| animal.capitalize}.join(', ')

#Danger of ! Methods
=begin
methods whose names end in ! modify the caller. this means that
the method will permanent alter the object on which it is called. This can be very useful if the object is to manipulate a string or array to create new data, but can be extremely harmful if it permanently alters an object or variable that needs to be re-referenced in its original form. 
=end

#PART2

#Special Characters in Strings

#To escape a character means to alter the way it is interpreted in the string often by changing an operator to a literal or vice-versa
# Double quotes that don't define the edge of string. Line breaks. Slashes used in a literal sense.

print "Benjamin Jacobs /n 5'6\""

#Splitting Strings

"Benjamin Jacobs /n 5'6\"".split("\n")

#Poking at Bytes

"Benjamin".each_byte.to_a => [66, 101, 110, 106, 97, 109, 105, 110]
