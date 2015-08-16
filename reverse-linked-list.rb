# Solutin for Reverse Linked List
# URL: https://leetcode.com/problems/reverse-linked-list/

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    if head
    	process(head)
    	$head
    else
    	head
    end
end

def process(node)
	$head = node unless node.next
	process(node.next).next = node if node.next
	node.next = nil
	node
end