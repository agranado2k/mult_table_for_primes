require "test_helper"

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

  def test_print_table
    table = @mult_table.create_table(3)
    output = <<~END
      +---+----+----+----+
      | # | 2  | 3  | 5  |
      | 2 | 4  | 6  | 10 |
      | 3 | 6  | 9  | 15 |
      | 5 | 10 | 15 | 25 |
      +---+----+----+----+
    END

    assert_equal output, @mult_table.print_table(table)
  end
end
