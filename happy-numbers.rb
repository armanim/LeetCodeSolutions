# Solutin for Happy Number
# URL: https://leetcode.com/problems/happy-number/

# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    records = []
    until records.include? n
      nn = 0
      for i in 0...n.to_s.length
      nn += n.to_s[i].to_i * n.to_s[i].to_i
      end
      return true if nn == 1
      records << n
      n = nn
    end
    false
end