require './pairing.rb'

describe 'set 1 arrays' do
  it 'remove 1st and add new' do
    expect(moveAlong([1, 2, 3, 4, 5])).to eq [2, 3, 4, 5, 6]
  end

  it 'sorts the array accending order' do
    expect(sortArr([1, 3, 5, 4, 2])).to eq [1, 2, 3, 4, 5]
  end

  it 'sort and move along' do
    expect(sortMoveArr([1, 3, 5, 4, 2])).to eq [2, 3, 4, 5, 6]
  end

  it 'sums the values of an array' do
    expect(sumArr([1, 2, 3, 4, 5])).to eq 15
  end

  it 'sums the values of an array and doubles it' do
    expect(doublesArr([1, 2, 3, 4, 5])).to eq 30
  end
end

describe 'set 2 hashes' do
  it 'adds 1 to the values' do
    expect(addOneHash({ a: 1, b: 2 })).to eq ({ a: 2, b: 3 })
  end

  it 'sort hash by value' do
    expect(sortHash({ a: 2, b: 5, c: 1 })).to eq ({ a: 1, b: 2, c: 5 })
  end

  it 'return hash values in an array and sort them' do
    expect(sortHashValues({ a: 2, b: 5, c: 1 })).to eq [1, 2, 5]
  end

  it 'convert keys and values to string, and make keys values and values key' do
    expect(invertAndConvert({ a: 1, b: 2, c: 3 })).to eq ({ "1"=>"a", "2"=>"b", "3"=>"c" })
  end
end
