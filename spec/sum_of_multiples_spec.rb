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

end