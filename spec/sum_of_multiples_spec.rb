require "sum_of_multiples.rb"
describe 'SumOfMultiples' do
  it 'no multiples within the limit' do
    sumofmultiples = SumOfMultiples.new(3, 5)
    expect(sumofmultiples.to(1)).to eq 0
  end
  it 'one factor has multiples within the limit' do
    sumofmultiples = SumOfMultiples.new(3, 5)
    expect(sumofmultiples.to(4)).to eq 3
  end
  it 'more than one factor has multiples within the limit' do
    sumofmultiples = SumOfMultiples.new(3, 5)
    expect(sumofmultiples.to(10)).to eq 23
  end
  it 'varying number of parameters' do
    sumofmultiples = SumOfMultiples.new(3)
    expect(sumofmultiples.to(7)).to eq 9
  end
  it 'factors are not relatively prime' do
    sumofmultiples = SumOfMultiples.new(4, 6)
    expect(sumofmultiples.to(15)).to eq 30
  end
  it 'one factor is the multiple of other' do
    sumofmultiples = SumOfMultiples.new(5, 25)
    expect(sumofmultiples.to(51)).to eq 275
  end
  it 'some factors are relatively prime and some are not' do
    sumofmultiples = SumOfMultiples.new(5, 6, 8)
    expect(sumofmultiples.to(150)).to eq 4419
  end
  it 'only multiple of zero is zero' do
    sumofmultiples = SumOfMultiples.new(0)
    expect(sumofmultiples.to(1)).to eq 0
  end


end