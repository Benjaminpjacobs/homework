gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../credit_check_array'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    checker = CreditCheck.new
  end

  def test_split_number_into_array
    checker = CreditCheck.new
    input = "55418089"
    expected = ["5","5","4","1","8","0","8","9"]
    assert_equal expected, checker.split_number_into_array(input)
  end
  
  def test_double_numbers
    checker = CreditCheck.new
    input = ["5","5","4","1","8","0","8"]
    expected = [10, 5, 8, 1, 16, 0, 16]
    assert_equal expected, checker.double_numbers(input)
  end

  def test_check_for_two_digit_numbers
    checker = CreditCheck.new
    input = [10, 5, 8, 1, 16, 0, 16]
    expected = [1, 5, 8, 1, 7, 0, 7]
    assert_equal expected, checker.check_for_two_digit_numbers(input)
  end

  def test_re_add_check_number
    checker = CreditCheck.new
    input = [1, 5, 8, 1, 7, 0, 7]
    expected = [1, 5, 8, 1, 7, 0, 7, 9]
    check_digit = 9
    assert_equal expected, checker.re_add_check_number(input, check_digit)
  end

  def test_valid
    e = CreditCheck.new
    expected = "The number is valid!"
    result = e.check_number("5541808923795240")
    assert_equal expected, result
  end

  def test_valid_again
    e = CreditCheck.new
    expected = "The number is valid!"
    result = e.check_number("6011797668867828")
    assert_equal expected, result
  end

  def test_valid_and_again
    e = CreditCheck.new
    expected = "The number is valid!"
    result = e.check_number("4024007136512380")
    assert_equal expected, result
  end

  def test_invalid
    e = CreditCheck.new
    expected = "The number is invalid!"
    result = e.check_number("5541801923795240")
    assert_equal expected, result
  end
  
  def test_invalid_again
    e = CreditCheck.new
    expected = "The number is invalid!"
    result = e.check_number("4024007106512380")
    assert_equal expected, result
  end
  
  def test_invalid_and_again
    e = CreditCheck.new
    expected = "The number is invalid!"
    result = e.check_number("6011797668868728")
    assert_equal expected, result
  end

  def test_invalid_amex
    e = CreditCheck.new
    expected = "The number is invalid!"
    result = e.check_number("342801633855673")
    assert_equal expected, result
  end
  
  def test_valid_amex
    e = CreditCheck.new
    expected = "The number is valid!"
    result = e.check_number("342804633855673")
    assert_equal expected, result
  end
end
