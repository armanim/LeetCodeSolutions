// Solution for Linked List Cycle
// URL: https://leetcode.com/problems/linked-list-cycle/

/**
 * Definition for singly-linked list.
 * class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) {
 *         val = x;
 *         next = null;
 *     }
 * }
 */
public class Solution {
    public boolean hasCycle(ListNode head) {
        Map<ListNode, Integer> numbers = new HashMap<ListNode, Integer>();
        ListNode node = head;
        while (node != null) {
            if (numbers.get(node) != null) return true;
            numbers.put(node, 1);
            node = node.next;
        }
        return false;
    }
}