class CreditCheck
    attr_accessor :valid, :card_number, :check_digit
  
  def initialize
    @valid = false
    @card_number
    @check_digit
  end
  
  def check_number(card_number)
    @card_number = card_number
    @check_digit = card_number[-1]
    reverse_card_number(card_number)
    double_every_other(card_number)
    re_add_check_digit(card_number, check_digit)
    valid?(card_number)
  end
  
  def reverse_card_number(number)
    number.chop!.reverse!
  end

  def double_every_other(string)
    for i in 0..14
      double_and_reduce(string, i)
    end
  end

  def double_and_reduce(string, i)
    if i.even?
      number = double(string, i)
      check_for_two_digit_number(number, string, i)
    end
  end

  def double(number, index)
    ((number[index].to_i) * 2).to_s
  end

  def combine_two_digits(string)
    (string[0].to_i + string[1].to_i).to_s
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

  def re_add_check_digit(number, digit)
    (number.reverse!) << digit
  end
  
  def valid?(string)
    if combine_string(string) % 10 == 0
      valid = true 
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
