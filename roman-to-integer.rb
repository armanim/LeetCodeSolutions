# Solutin for Roman to Integer
# URL: https://leetcode.com/problems/roman-to-integer/

# @param {String} s
# @return {Integer}
$values = {
    'i' => 1,
    'v' => 5,
    'x' => 10,
    'l' => 50,
    'c' => 100,
    'd' => 500,
    'm' =>  1000
}


def roman_to_int(s)
  if s.size > 1
    result = 0
    i = 1
    while i <= s.size do

      if s[i] and $values[s[i - 1].downcase] < $values[s[i].downcase]
        result += $values[s[i].downcase] - $values[s[i - 1].downcase]
        i += 1
      else
        result += $values[s[i - 1].downcase]
      end
      i += 1
    end
  else
    result = $values[s[0].downcase]
  end
  result
end