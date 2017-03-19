gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'well_formedness_2.rb'

class StringValidatorTest < Minitest::Test
  def test_it_exists
    e = StringValidator.new
  end

  def test_validate_paren
     e = StringValidator.new
     assert e.validate("(abc)")
  end

  def test_validate_brack
    e = StringValidator.new
    assert e.validate("[abc]")
  end

  def test_validate_brace
    e = StringValidator.new
    assert e.validate("{abc}"), 4
  end

  def test_validate_mix
    e = StringValidator.new
    assert e.validate("{a[b]c}"), 4
  end

  def test_unvalidate_mix
    # skip
    e = StringValidator.new
    assert !e.validate(")mismatched(pair)]")
  end

   def test_alt_charset
    # skip
    e = StringValidator.new
    assert e.validate("({})", [["(",")"],["{","}"]])
  end


  
end

