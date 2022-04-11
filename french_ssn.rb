require 'date'
require 'yaml'
SSN_PATTERN = /^(?<gender>1|2)\s?(?<year>[0-9]{2})\s?(?<month>0[1-9]|1[0-2])\s?(?<department>[1-8][0-9]|0[1-9]|9[0-5]|2[AB])\s?(?<random>\d{3}\s?\d{3})\s?(?<key>\d{2})/

def french_ssn_info(ssn)
  match_data = ssn.match(SSN_PATTERN)
  return "The number is invalid" unless match_data

  gender = match_data[:gender] == '1' ? 'man' : 'woman'
  return "a #{gender}, born in #{month(match_data[:month])} '#{match_data[:year]} in #{department(match_data[:department])}."
end

def department(number)
  departments = YAML.load_file('data/french_departments.yml')
  departments[number]
end

def month(number)
  Date::MONTHNAMES[number.to_i]
end
