# Solutin for Count Rotate Array
# URL: https://leetcode.com/problems/rotate-array/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  for i in 0...k
    item = nums[-1]
    nums.delete_at(-1)
    nums.insert(0, item)
  end
  return nil
end