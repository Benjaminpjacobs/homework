class CreditCheck
    attr_accessor :valid, :number_arr
    
  def initialize
    @valid = false
    @number_arr =[]
    @check_digit = nil
  end

  def check_number(cc_number)
    number_arr = cc_number.split('')
    @check_digit = number_arr.pop.to_i 
    @check_arr = double_every_other(number_arr)
    check_for_two_digit_numbers(@check_arr)
    valid?
  end

  def double_every_other(array)
    array.each_with_index.map do |x, idx| 
      if array.length.odd?
        idx.even? ? x.to_i * 2 : x.to_i 
      else
        idx.odd? ? x.to_i * 2 : x.to_i 
      end
    end
  end

  def check_for_two_digit_numbers(array)
    array.map! do |x| 
      if x < 10  
        x 
      else
        split_and_reduce_digit(x)
      end  
    end
  end

  def split_and_reduce_digit(x)
    x.to_s.split('').reduce{ |x, sum| sum.to_i + x.to_i }
  end

  def valid?
    @check_arr.push(@check_digit)
    @check_arr.reduce(&:+) % 10 == 0 ? valid = true : valid = false
    valid == true ? p("The number is valid!") : p("The number is invalid!")
  end
end

checker = CreditCheck.new
checker.check_number("5541808923795240")
checker.check_number("6011797668867828")
checker.check_number("4024007136512380")
checker.check_number("5541801923795240")
checker.check_number("4024007106512380")
checker.check_number("6011797668868728")
checker.check_number("342804633855673")
checker.check_number("342801633855673")




