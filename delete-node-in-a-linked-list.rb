# Solutin for Delete Node in a Linked List
# URL: https://leetcode.com/problems/delete-node-in-a-linked-list/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.
def delete_node(node)
    throw(node)
    remove_last(node)
end

def throw(node)
    if node
        if node.next
            node.val = node.next.val
            throw(node.next)
        end
    end
end

def remove_last(node)
    parent = node
    last = parent.next

    while last.next
        parent, last = last, last.next
    end

    parent.next = nil
end