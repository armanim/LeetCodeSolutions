# Solutin Palindrome Linked List
# URL: https://leetcode.com/problems/palindrome-linked-list/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    $array = []
    to_a(head)
    check
end

def to_a(node)
    if node
        $array << node
        # $array.each { |e| puts e.val  }
        # puts "-"
        to_a(node.next)
    end
end

def check
    (0...$array.length).to_a.each do |i|
        return false if $array[i].val != $array[-(i+1)].val
    end
    return true
end