# Solution for Remove Duplicates from Sorted Array
# URL: https://leetcode.com/problems/remove-duplicates-from-sorted-array/

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    return nums.size if nums.size < 2
    writer_index, reader_index = 0, 1
    while reader_index <= nums.size do
        unless nums[writer_index] == nums[reader_index]
            writer_index += 1
            nums[writer_index] = nums[reader_index]
        end
        reader_index += 1
    end
    writer_index
end