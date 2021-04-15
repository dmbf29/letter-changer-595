require_relative '../encrypt'

describe '#encrypt' do
  it 'should return an empty string when given one' do
    actual = encrypt('')
    expected = ''
    expect(actual).to eq(expected)
  end

  it 'should return "B" when given "E"' do
    actual = encrypt('E')
    expected = 'B'
    expect(actual).to eq(expected)
  end

  it 'should return "Z" when given "C"' do
    actual = encrypt('C')
    expected = 'Z'
    expect(actual).to eq(expected)
  end

  it 'should return an ecrypted message when given a sentence' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end
end
