require 'terminal-table'
require_relative './my_prime'

class MultTable
  def print_table(table)
    Terminal::Table.new(rows: table).render + "\n"
  end

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
