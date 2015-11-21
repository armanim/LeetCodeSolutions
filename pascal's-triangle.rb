# Solutin for Pascal's Triangle
# URL: https://leetcode.com/problems/pascals-triangle/

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows == 0
  answer = [[1]]
  num_rows -= 1
  for i in 1..num_rows
    arr = []
    
    for j in 0..i
      arr << c(i, j)
    end 
    answer << arr
  end
  answer
end

def a(n, i)
  n!(n) / n!(n - i)
end

def n!(n)
  answer = 1
  for i in 1..n
    answer *= i
  end
  answer
end

def c(n, i)
  a(n, i) / n!(i)
end