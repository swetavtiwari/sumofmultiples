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

end