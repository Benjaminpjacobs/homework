f = "First"
l = "Last"

p f + l
p l + f
p f + ' ' + l
p (l + ' ' + f + ' ') * 2

p "#{f}#{l}"
p "#{l}#{f}"
p "#{f} #{l}"
p "#{l} #{f} #{l} #{f}"

name_1 = "Megan Smith"
name_2 = "Todd Park"

p name_1[0..4]
p name_1.split[0]
p name_2[0]+name_2[5]

a = 12
b = 65
c = 31
d = 98

p ([a, b, c, d].inject(&:+))/4.0

a = "Ezra"
b = "Ada"
c = "Yukihiro"
d = "Grace"

p ([a, b, c, d].map{ |name| name.length}.inject(&:+))/4.0

age = 4
h = "Happy "
ha = "happy "
b = "birthday"
p h + (ha * (age-1)) + b

def silly_compression(string)
  a = string[0]
  c = string[-1]
  b = string[1..-2].length.to_s
  p a + b + c
end

silly_compression("Denver")
silly_compression("Kalamazoo")