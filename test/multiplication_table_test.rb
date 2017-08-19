require "test_helper"

class MultTable
  def create_table(limit=10)
    primes = prime_numbers(limit)
    table = [["#"] + primes]
    primes.each{|prime| table.push(create_row(prime, primes))}
    table
  end

  def create_row(current, numbers)
    [current]+mult_in_row(current, numbers)
  end

  def mult_in_row(current, numbers)
    numbers.reduce([]){|r, other| r.push(current*other)}
  end

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

  def test_multi_table_for_3_first_prime_numbers
    table = [
      ["#",2,3,5],
      [2,4, 6,10],
      [3,6,9,15],
      [5,10,15,25]
    ]

    assert_equal table, @mult_table.create_table(3)
  end
end
