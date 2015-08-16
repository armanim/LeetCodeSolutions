# Solutin for Contains Duplicate
# URL: https://leetcode.com/problems/contains-duplicate/

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
   	hash = Hash.new
   	for num in nums
   		if hash[num]
   			return true
   		else
   			hash[num] = 1
   		end
   	end 
   	return false
end