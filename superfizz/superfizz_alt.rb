class SuperFizzBuzzAlt
  
  def self.sfb(x)
    fizzbuzz = []
    fizzbuzz.push(supers(x), fizzes(x), buzzes(x)).compact!
    if fizzbuzz.empty? 
      p x 
    else
      p fizzbuzz.join
    end
  end

  def self.supers(x)
    x % 7 == 0 ? "Super" : nil
  end

  def self.buzzes(x)
    x % 5 == 0 ? "Buzz" : nil
  end

  def self.fizzes(x)
    x % 3 == 0 ? "Fizz" : nil
  end 
end

(0..1000).to_a.map do |num| 
  SuperFizzBuzzAlt.sfb(num)
end

