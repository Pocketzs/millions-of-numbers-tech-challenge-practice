require './millions_of_numbers'

RSpec.describe '#millions_of_numbers' do
  it 'returns any/all values present in all three arrays' do
    nums_1 = [1, 2, 4, 5, 8]
    nums_2 = [2, 3, 5, 7, 9]
    nums_3 = [1, 2, 5, 8, 9]
    nums_4 = [1, 2, 5, 8, 9]

    solution = find_matches(nums_1, nums_2, nums_3)

    expect(solution).to eq([2,5])
  end

  it 'returns any/all values present in a different set of three arrays' do
    nums_1 = [1, 2, 3]
    nums_2 = [1, 2, 4]
    nums_3 = [1, 5, 6]

    solution = find_matches(nums_1, nums_2, nums_3)

    expect(solution).to eq([1])
  end

  it 'returns any/all values present in a large set of three arrays' do
    nums_1 = (1..1_000).to_a.shuffle.first(100)
    nums_2 = (1..1_000).to_a.shuffle.first(100)
    nums_3 = (1..1_000).to_a.shuffle.first(100)

    solution = find_matches(nums_1, nums_2, nums_3)

    expect(solution).to eq([1])
  end
end
