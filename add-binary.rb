# Solutin for Add Binary
# URL: https://leetcode.com/problems/add-binary/

# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  return add_binary(b, a) if a.length < b.length
  
  result = ""
  carry = "0"
  -1.downto(a.length * -1) do |i|
    sum_result, carry = sum(a[i], b[i], carry)

    result = sum_result + result
  end

  result = "1" + result if carry.eql? "1"
  return result
end

def sum(a, b, carry)
  b = "0" unless b 
  if !a.eql?(b)
    return carry.eql?("1") ? "0" : "1", carry
  else
    return carry, a 
  end
end