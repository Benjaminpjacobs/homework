gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'credit_check_array'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    CreditCheck.new
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
