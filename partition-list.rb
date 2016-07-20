# Solution for Partition List
# URL: https://leetcode.com/problems/partition-list/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
    before_head = ListNode.new(nil)
    before_head.next = head
    current_point = before_head
    last_point = nil
  
    cut_point = current_point
    while current_point.next do
      last_point = current_point
      current_point = current_point.next

      if current_point.val < x
        node = current_point
        last_point.next = current_point.next

        node.next = cut_point.next
        cut_point.next = node
        cut_point = node
      end
    end

    before_head.next
end