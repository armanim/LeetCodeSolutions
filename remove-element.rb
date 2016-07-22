# Solution for Remove Element
# URL: https://leetcode.com/problems/remove-element/

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    writer_index, reader_index = 0, 0
    while reader_index < nums.size do
        unless nums[reader_index] == val
            nums[writer_index] = nums[reader_index]
            writer_index += 1
        end
        reader_index += 1
    end
    writer_index
end