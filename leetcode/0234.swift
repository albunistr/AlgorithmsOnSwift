/*Given the head of a singly linked list, return true if it is a
 palindrome
  or false otherwise.*/

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

func isPalindrome(_ head: ListNode?) -> Bool {
    var currentNode = head
    var arr = [Int?]()
    
    while currentNode?.val != nil {
        arr.append(currentNode!.val)
        currentNode = currentNode!.next
    }
    
    return arr == arr.reversed()
}

