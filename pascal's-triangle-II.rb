# Solutin for Pascal's Triangle II
# URL: https://leetcode.com/problems/pascals-triangle-ii/

# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  result = []
    for i in 0..row_index
      result << c(row_index, i)
    end
    result
end

def n! n
  result = 1
  (1..n).each do |i|
    result = result * i
  end
  result
end

def c buttom, top
  (n!(buttom) / n!(buttom - top)) / n!(top)
end