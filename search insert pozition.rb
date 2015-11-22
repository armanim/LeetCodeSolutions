# Solutin for Search Insert Position
# URL: https://leetcode.com/problems/search-insert-position/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  binary_search(nums, 0, nums.size - 1, target)
end

def binary_search(nums, first, last, target)
  if target < nums[first]
    return first
  elsif target > nums[last]
    return last + 1
  else
    # get the middle one
    i = (last + first) / 2
    
    if nums[i] > target
      if first != last
        binary_search(nums, first, i - 1, target)
      else
        return i > 0 ? i - 1 : 0
      end
    elsif nums[i] < target
      if first != last
        binary_search(nums, i + 1, last, target)
      else
        return i + 1
      end
    else
      return i
    end
  end
end