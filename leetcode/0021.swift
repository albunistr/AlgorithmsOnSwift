/*You are given the heads of two sorted linked lists list1 and list2.
 
 Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

 Return the head of the merged linked list.*/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    if list1 == nil { return list2 }
    if list2 == nil { return list1 }
    
    if list1!.val < list2!.val {
        list1!.next = mergeTwoLists(list1!.next, list2)
        return list1
    } else {
        list2!.next = mergeTwoLists(list2!.next, list1)
        return list2
    }
}
