require_relative 'main'

describe 'missing_numbers' do
  it 'should accept only Array as input' do
    expect { missing_numbers('invalid') }.to raise_error(ArgumentError)
  end

  it 'should accept only natural numbers' do
    expect { missing_numbers([-1]) }.to raise_error(ArgumentError)
  end

  it 'should return missing numbers' do
    case1 = [2,3,6,8,9,7]
    expect(missing_numbers(case1)).to match_array [4,5]

    case12 = [1,10]
    expect(missing_numbers(case12)).to match_array (2..9).to_a
  end

  it 'should return an empty array when there are no missing numbers' do
    case2 = (1..10).to_a
    expect(missing_numbers(case2)).to match([])
  end

  it 'should return an empty array when input is empty' do
    case3 = []
    expect(missing_numbers(case3)).to match([])
  end
end



