/*Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).*/
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
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return root?.left == root?.right
    }
}

extension TreeNode: Equatable {
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val && lhs.left == rhs.right && lhs.right == rhs.left
    }
}
