# Solutin for Remove Linked List Elements
# URL: https://leetcode.com/problems/remove-linked-list-elements/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  $head = head
  process(head, val)
  $head  
end

def process(node, val)
  while node
    if node.val == val
      if $head == node
        $head = node.next
        $pre_node = $head
      else
        $pre_node.next = node.next
      end
    else
      $pre_node = node
    end
    node = node.next
  end
end