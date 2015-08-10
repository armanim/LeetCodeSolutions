# Solutin for Implement Queue using Stacks
# URL: https://leetcode.com/problems/implement-queue-using-stacks/

class Queue
    # Initialize your data structure here.
    attr_accessor :body
    def initialize
        @body = []
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
        @body.push x
    end

    # @return {void}
    def pop
        item = @body.last
        $is_buttom = true if @body.length == 1
        @body.pop
        pop unless empty
        if $is_buttom
            $is_buttom = false
        else
            push item
        end
    end

    # @return {Integer}
    def peek
        item = @body.last
        result = item if @body.length == 1
        @body.pop

        result = peek unless empty
        push item
        result
    end

    # @return {Boolean}
    def empty
        @body.last == nil
    end
end