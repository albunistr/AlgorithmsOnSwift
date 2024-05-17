/*Given the head of a singly linked list, reverse the list, and return the reversed
 list.*/

func reverseList(_ head: ListNode?) -> ListNode? {
    var prev = ListNode?(nil)
    var head = head
    
    while head != nil {
        let next = head?.next
        head?.next = prev
        prev = head
        head = next
    }
    
    return prev
}
