class SumOfMultiples
  def initialize(*number)
    @number = number
  end

  def to(limit)
    sum = 0
    number = @number[0]
    while number < limit
      @number.each do |factor|
        if number % factor == 0
          sum += number
        end
      end
      number += 1
    end
    sum
  end
end
