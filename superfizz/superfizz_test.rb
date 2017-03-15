gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'superfizz.rb'
require_relative 'superfizz_alt.rb'

class SuperFizzBuzzTest < Minitest::Test
  def test_for_3
    assert_equal "Fizz", SuperFizzBuzz.sfb(3)
    assert_equal "Fizz", SuperFizzBuzzAlt.sfb(3)
  end

  def test_for_5
    assert_equal "Buzz", SuperFizzBuzz.sfb(5)
    assert_equal "Buzz", SuperFizzBuzzAlt.sfb(5)
  end
  
  def test_for_7
    assert_equal "Super", SuperFizzBuzz.sfb(7)
    assert_equal "Super", SuperFizzBuzzAlt.sfb(7)    
  end
  
  def test_for_3_and_5
    assert_equal "FizzBuzz", SuperFizzBuzz.sfb(15)
    assert_equal "FizzBuzz", SuperFizzBuzzAlt.sfb(15)    
  end
  
  def test_for_3_and_7
    assert_equal "SuperFizz", SuperFizzBuzz.sfb(21)
    assert_equal "SuperFizz", SuperFizzBuzzAlt.sfb(21)
  end
  
  def test_for_5_and_7
    assert_equal "SuperBuzz", SuperFizzBuzz.sfb(35)
    assert_equal "SuperBuzz", SuperFizzBuzzAlt.sfb(35)
  end
  
  def test_for_3_5_and_7
    assert_equal "SuperFizzBuzz", SuperFizzBuzz.sfb(105)
    assert_equal "SuperFizzBuzz", SuperFizzBuzzAlt.sfb(105)
  end
  
  def test_for_other
    assert_equal 8, SuperFizzBuzz.sfb(8)
    assert_equal 8, SuperFizzBuzzAlt.sfb(8)
  end

  def test_both_work_the_same
    a = (0..1000).to_a.map{ |num| SuperFizzBuzzAlt.sfb(num) }
    b = (0..1000).to_a.map{ |num| SuperFizzBuzz.sfb(num) }
    assert_equal a, b
  end
end