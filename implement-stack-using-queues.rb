# Solutin for Implement Stack using Queues
# URL: https://leetcode.com/problems/implement-stack-using-queues/

class Stack
    # Initialize your data structure here.
    def initialize
        $queue = []
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
        $queue << x
    end

    # @return {void}
    def pop
    	length = $queue.length - 1
    	while length > 0
    		$queue << $queue[0]
        	$queue.delete_at(0)
        	length -= 1
        end
        $queue.delete_at(0)
    end

    # @return {Integer}
    def top
        $queue[-1]
    end

    # @return {Boolean}
    def empty
        $queue.empty?
    end
end