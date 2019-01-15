class SumOfMultiples
  def initialize(number1, number2)
    @number1 = number1
    @number2 = number2
  end

  def to(limit)
    sum = 0
    number = @number1
    while number < limit
      if number % @number1 == 0 || number % @number2 == 0
        sum += number
      end
      number += 1
    end
    sum
  end
end
