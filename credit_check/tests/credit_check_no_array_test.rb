gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../credit_check_no_array'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    e = CreditCheck.new
  end

  def test_reverse_card_number
    e = CreditCheck.new
    input = "85736181"
    expected = "8163758"
    assert_equal expected, e.reverse_card_number(input)
  end

  def test_double_every_other
    e = CreditCheck.new
    input = "8163758"
    expected = "7133557"
    assert_equal expected, e.double_every_other(input)
  end

  def test_re_add_check_digit
    e = CreditCheck.new
    input = "7133557"
    check_digit = "1"
    expected = "75533171"
    assert_equal expected, e.re_add_check_digit(input, check_digit)
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
