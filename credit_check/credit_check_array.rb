class CreditCheck
    attr_accessor :valid, :number_arr, :check_digit
    
  def initialize
    @valid = false
    @number_arr = []
    @check_digit = nil
  end

  def check_number(cc_number)
    split_number_into_array(cc_number)
    store_check_digit(number_arr)
    double_numbers(number_arr)
    check_for_two_digit_numbers(number_arr)
    re_add_check_number(number_arr, check_digit)
    valid?(number_arr, check_digit)
  end

  def split_number_into_array(card_number)
    @number_arr = card_number.split('')
  end

  def store_check_digit(number_array)
    @check_digit = number_arr.pop.to_i 
  end

  def double_numbers(array)
    array.map!.with_index do |num, idx| 
      regular_or_amex?(array, num, idx)
    end
  end

  def regular_or_amex?(array, num, idx)
    if array.length.odd?
      double_evens(num, idx)
    else
      double_odds(num, idx) 
    end
  end

  def double_evens(num, idx)
    if idx.even? 
      num.to_i * 2
    else  
      num.to_i 
    end
  end

  def double_odds(num, idx)
    if idx.odd? 
      num.to_i * 2
    else  
      num.to_i 
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
  
  def re_add_check_number(number_arr, check_digit)
    number_arr << check_digit
  end
  
  def valid?(number_array, check_digit)  
    if number_array.reduce(&:+) % 10 == 0  
      @valid = true
      p "The number is valid!"
    else
      p "The number is invalid!"
    end
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




