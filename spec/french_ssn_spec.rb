require_relative '../french_ssn'

# RSPEC
# describe / it / expect

describe '#french_ssn_info' do
  it 'should be invalid if given the wrong number of digits' do
    actual = french_ssn_info("123")
    expected = "The number is invalid"
    expect(actual).to eq(expected)
  end

  it 'should be give a nice sentence when give a number for a man in Seine-Maritime' do
    actual = french_ssn_info("1 84 12 76 451 089 46")
    expected = "a man, born in December '84 in Seine-Maritime."
    expect(actual).to eq(expected)
  end

  it 'should be give a nice sentence when give a number for a man in Seine-Maritime' do
    actual = french_ssn_info("1 84 12 2B 451 089 46")
    expected = "a man, born in December '84 in Haute-Corse."
    expect(actual).to eq(expected)
  end

  it 'should be give a nice sentence when give a number for a woman in Paris' do
    actual = french_ssn_info("2 82 01 75 451 089 46")
    expected = "a woman, born in January '82 in Paris."
    expect(actual).to eq(expected)
  end
end
