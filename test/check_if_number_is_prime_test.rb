require "test_helper"

class MyPrime
  def prime?(number)
    return false if number < 2
    return true if number == 2 || number == 3

    limit = Math.sqrt(number).round
    4.upto(limit).select{|n| ((number % n) == 0)}.empty?
  end
end

class IsPrimeTest < Minitest::Test
  def setup
    @my_prime = MyPrime.new
  end

  def test_number_less_than_2_cannot_be_prime
    refute @my_prime.prime?(1)
  end

  def test_2_is_prime
    assert @my_prime.prime?(2)
  end

  def test_3_is_prime
    assert @my_prime.prime?(3)
  end

  def test_5_is_prime
    assert @my_prime.prime?(5)
  end

  def test_37_is_prime
    assert @my_prime.prime?(37)
  end

  def test_4_is_not_prime
    assert @my_prime.prime?(4)
  end

  def test_10_is_not_prime
    assert @my_prime.prime?(10)
  end
end
