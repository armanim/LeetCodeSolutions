# Solution for Integer to Roman
# URL: https://leetcode.com/problems/integer-to-roman/

$values = {
    'M' => 1000,
    'C' => 100,
    'X' => 10,
    'I' => 1
}

# @param {Integer} num
# @return {String}
def int_to_roman(num)
  result = ''
  $values.each do |key, value|
    current = roman([key, (num / value)])
    result = result + current if current
    num = num % value
  end
  result.upcase
end

def roman(pare)
  if pare.last < 4
    pare.first * pare.last
  elsif pare.last == 4
    pare.first + get_next_roman(pare.first)
  elsif pare.last > 4 and pare.last < 9
    get_next_roman(pare.first) + pare.first * (pare.last - 5)
  else
    pare.first + get_next_roman(get_next_roman(pare.first))
  end
end

def get_next_roman(roman)
  keys = ['I', 'V', 'X', 'L', 'C', 'D', 'M']
  keys[keys.index(roman) + 1]
end
