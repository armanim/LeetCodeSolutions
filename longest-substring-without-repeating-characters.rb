# Solutin for Longest Substring Without Repeating Characters
# URL: https://leetcode.com/problems/longest-substring-without-repeating-characters/

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  length = 0
  result = length
  i = 0
  $hash = Hash.new
  while i < s.length
    while $hash[s[i]] == nil and i < s.length
      $hash[s[i]] = i
      length += 1
      i += 1
    end
    result = length if length > result
    # printf "#{length}(#{i}) -> "
    
    if i < s.length
      $hash[s[i]].downto(i - length) do |j|
        length -= 1
        $hash[s[j]] = nil
      end
      # puts "#{length}(#{i})"
    end
  end
  result
end