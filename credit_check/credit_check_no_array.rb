require 'pry'
class CreditCheck
    attr_accessor :valid, :cc, :check
  
  def initialize
    @valid = false
    @cc = ''
    @check = ''
  end
  
  def check_number(cc)
    cc = cc
    check = cc[-1]
    cc.chop!.reverse!
    iterate_string(cc)
    cc = cc.reverse! + check
    valid?(cc)
  end

  def double(number, index)
    ((number[index].to_i) * 2).to_s
  end

  def combine_two_digits(string)
    (string[0].to_i + string[1].to_i).to_s
  end
  
  def iterate_string(string)
    for i in 0..14
      if i.even?
        number = double(string, i)
        check_for_two_digit_number(number, string, i)
      end
    end
  end
  
  def check_for_two_digit_number(number, string, index)
    if number.to_i > 9
      string[index] = combine_two_digits(number)
    else
      string[index] = number
    end
  end
  
  def combine_string(string)
    result = string[0].to_i
    for i in 1..15
      result += string[i].to_i
    end
    result
  end
  
  def valid?(string)
    combine_string(string) % 10 == 0 ? valid = true : valid = false
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
