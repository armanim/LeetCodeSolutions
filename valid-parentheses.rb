# Solutin for Valid Parentheses
# URL: https://leetcode.com/problems/valid-parentheses/

# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  s.split(//).each do |c|
    if c.eql?(")") and stack.last.eql?("(")
        stack.pop
    elsif c.eql?("}") and stack.last.eql?("{")
        stack.pop
    elsif c.eql?("]") and stack.last.eql?("[")
        stack.pop
    else
        stack.push(c)
    end
  end 

  stack.empty?
end