# Solutin for Compare Version Numbers
# URL: https://leetcode.com/problems/compare-version-numbers/

# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
  v1 = version1.split(".")
  v2 = version2.split(".")

  for i in 0...(v1.length > v2.length ? v1.length : v2.length)
    v1 << 0 unless v1[i] 
    v2 << 0 unless v2[i] 
    if v1[i].to_i > v2[i].to_i
      return 1
    elsif v1[i].to_i < v2[i].to_i
      return -1
    end
  end
  0
end