/*Given the root of a binary tree, return its maximum depth.
 
 A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.*/

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

func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    
    var rightBranch = maxDepth(root!.right) + 1
    var leftBranch = maxDepth(root!.left) + 1
    
    return max(rightBranch, leftBranch)
}
