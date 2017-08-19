require "test_helper"

class MultTable
  def prime_numbers(limit=10, my_prime=MyPrime.new)
    primes = []
    candidate = 2
    while primes.size < limit do
      primes << candidate if my_prime.prime?(candidate)
      candidate += 1
    end
    primes
  end
end

class MultTableTest < Minitest::Test
  def setup
    @mult_table = MultTable.new
  end

  def test_get_first_10_prime_numbers
    prime_numbers = [2,3,5,7,11,13,17,19,23,29]

    assert_equal prime_numbers, @mult_table.prime_numbers
  end
end
