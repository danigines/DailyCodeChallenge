/*
MARK: - Description
Given the root to a binary tree, implement serialize(root),
which serializes the tree into a string, and deserialize(s),
 which deserializes the string back into the tree.

For example, given the following Node class

class Node:
  def __init__(self, val, left=None, right=None):
    self.val = val
    self.left = left
    self.right = right

The following test should pass:

node = Node('root', Node('left', Node('left.left')), Node('right'))
assert deserialize(serialize(node)).left.left.val == 'left.left'


MARK: Primary Solution: DFS
1. What does DFS mean? -> DFS = Depth-First Search
 
DFS is a traversal algorithm for trees or graphs where you explore as far down a branch as possible before backtracking.

In a binary tree, this means:
 * Visit the root
 * Then recursively visit the left subtree
 * Then the right subtree

This is often done recursively, or with a stack for an iterative version.
    A
   / \
  B   C
 /
D

DFS order: A → B → D → C
 
MARK: Secondary Solution: Using BFS (Level Order) Instead of DFS
2. What does BFS mean? -> BFS = Breadth-First Search
BFS is a traversal where you explore all nodes at the current level before moving to the next level.

This requires a queue to track which nodes to visit next.
    A
   / \
  B   C
 /
D

BFS order: A → B → C → D
 
MARK: Alternative Solution: Variant Using Codable
3. Why Use BFS Instead of DFS?
Here are reasons you might prefer BFS for serialize/deserialize:

Reason                                  Why It Matters
✅ Avoids deep recursion stack          Safer for very deep/unbalanced trees
✅ Better for level-structured data     UI trees, tables, or trees processed per layer
✅ Easier to maintain parent-child      Especially if tree is reconstructed level-by-level
❌ Slightly more memory                 Holds more nodes in the queue at once (wider trees)
*/
