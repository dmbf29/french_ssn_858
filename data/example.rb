it 'should convert a valid number to a descriptive string' do
  actual = french_ssn_info("299017545108946")
  expected = "a woman, born in January, 99 in Paris."
  expect(actual).to eq(expected)
end
