class MyPrime
  def prime?(number)
    return false if number < 2
    return true if number == 2 || number == 3

    limit = Math.sqrt(number).round
    2.upto(limit).select{|n| ((number % n) == 0)}.empty?
  end
end
