# Solutin for Contains Duplicate II
# URL: https://leetcode.com/problems/contains-duplicate-ii/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
    hash = Hash.new
   	for i in 0...nums.length
   		if hash[nums[i]]
   			if i - hash[nums[i]] <= k
   				return true
   			else
   				hash[nums[i]] = i	
   			end
   		else
   			hash[nums[i]] = i
   		end
   	end 
   	return false
end