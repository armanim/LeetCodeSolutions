# Solutin for Repeated DNA Sequences
# URL: https://leetcode.com/problems/repeated-dna-sequences/

# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
  subsequences = Hash.new
  for i in 0...s.length
    subsequence = s[i, 10]
    if subsequences[subsequence]
      subsequences[subsequence] += 1
    else
      subsequences[subsequence] = 1
    end
  end
  result = []
  subsequences.each do |key, value|
    result << key if value > 1
  end
  return result
end