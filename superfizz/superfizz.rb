class SuperFizzBuzz
    
  def self.sfb(x)
    if x % 3 == 0 && x % 5 == 0 && x % 7 == 0
      p "SuperFizzBuzz"
    elsif x % 3 == 0 && x % 7 == 0
      p "SuperFizz"
    elsif x % 5 == 0 && x % 7 == 0
      p "SuperBuzz"
    elsif x % 3 == 0 && x % 5 == 0
      p "FizzBuzz"
    elsif x % 3 == 0
      p "Fizz"
    elsif x % 5 == 0
      p "Buzz"
    elsif x % 7 == 0
      p "Super"
    else
      p x
    end
  end 
end


(0..1000).to_a.each do |num| 
  SuperFizzBuzz.sfb(num)
end

