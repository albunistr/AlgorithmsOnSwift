/*Given the root of a binary tree, return the sum of all left leaves.
 
 A leaf is a node with no children. A left leaf is a leaf that is the left child of another node.*/

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */


func sumOfLeftLeaves(_ root: TreeNode?, _ isLeft: Bool = false) -> Int {
    if root == nil {return 0}
    if root!.left == nil && root!.right == nil {
        return isLeft ? root!.val : 0
    }
    return sumOfLeftLeaves(root!.left, true) + sumOfLeftLeaves(root!.right, false)
}
