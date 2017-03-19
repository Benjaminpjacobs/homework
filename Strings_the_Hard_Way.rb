def length(string)
  string.split('').count
end

p length("pizza")

def upcase(string)
  string.split('').map!{|letter| letter.capitalize}.join
end

p upcase("pizza")

def sub(string, old, new)
  string[string.index(old)] = new
  string
end

p sub("dog", "d", "f")
p sub("dud", "d", "f")

def gsub(string, old, new)
  string.split('').map!{|letter| letter == old ? new : letter}.join
end

p gsub("dud", "d", "f")

def split(string)
  string << ' '
  string_array = []
  until !string.include?(' ')
   space = string.index(' ')
   string_array << string[0..(space-1)]
   string = string[(space + 1)..-1]
  end
  p string_array
end

split("Hello Dear Friends")

def split_with_arg(string, arg)
  string << arg
  string_array = []
  until !string.include?(arg)
   space = string.index(arg)
   string_array << string[0..(space-1)]
   string = string[(space + 1)..-1]
  end
  p string_array
end

split_with_arg("one,two,three", ",")

def substring(string, top, bot)
  p string [top..bot]
end

substring("pizza", 3, 4)
substring("pizza", 1,4)