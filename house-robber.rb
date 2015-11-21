# Solutin for House Robber
# URL: https://leetcode.com/problems/house-robber/

# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.length == 0
  dp = [nums.first]
  
  # item of index is 1
  dp << [dp[0], nums[1]].max if nums.length > 1

  for i in 2...nums.length
    dp << 0
    for j in 0..(i - 2)
      dp[i] = [dp[i], dp[j] + nums[i]].max
    end
  end

  max = dp.max
end