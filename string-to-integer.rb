# Solutin for String to Integer (atoi)
# URL: https://leetcode.com/problems/string-to-integer-atoi/

# @param {String} str
# @return {Integer}
def my_atoi(str)
  # remove space
  str = str.gsub(/^[[:blank:]]*/, "")
  
  # puts str
  unless str =~ /^(\+|\-)?\d+/
    return 0
  end

  # Clear none numbiric string
  str = str.gsub(/[[:blank:]]+\d*/,"").gsub(/[[:alpha:]]+\d*/, "")
  
  # puts str
  
  # get the minus or plus
  plus_or_minus = 1

  if str[0] == "+"
    str = str[1, str.length - 1]
  elsif str[0] == "-"
    plus_or_minus = -1
    str = str[1, str.length - 1]
  end

  # puts str

  # get integer value
  result = 0
  for i in 0...str.length
    result += 10 ** (str.length - 1 - i) * (str[i].ord - "0".ord)
  end

  result *= plus_or_minus

  if result > 2**31 - 1
    return 2**31 - 1
  elsif result < - (2**31)
    return - (2**31)
  else
    return result
  end
end