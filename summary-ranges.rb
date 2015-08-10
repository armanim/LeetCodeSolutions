# Solutin for Summary Ranges
# URL: https://leetcode.com/problems/summary-ranges/

def summary_ranges(nums)
	result = []
	range = []
    nums.each_with_index do |item, index|
    	range << item
    	if index < nums.length - 1
    		if nums[index + 1] != item + 1
				result << print_range(range)
    			range = []
    		end
    	else
    		result << print_range(range)
    	end
    end
    result
end

def print_range range
	if range.length > 1
		"#{range[0]}->#{range[-1]}"
	else
		"#{range[0]}"
	end
end