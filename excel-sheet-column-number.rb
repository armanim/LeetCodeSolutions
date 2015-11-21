# Solutin for Excel Sheet Column Number
# URL: https://leetcode.com/problems/excel-sheet-column-number/

# @param {String} s
# @return {Integer}
def title_to_number(s)
  answer = 0
  i = s.length
  for c in s.chars
    i -= 1
    answer += (c.ord - "A".ord + 1) * (26 ** i)
  end
  answer
end