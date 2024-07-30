(: Tree Type)
(: NilNode Tree)
(: TreeNode (-> $a Tree Tree Tree))

 ;;test cases
! (TreeNode 5 (TreeNode 3 NilNode NilNode) (TreeNode 7 NilNode NilNode))
! (TreeNode 5 (TreeNode 3 (TreeNode 1 NilNode NilNode) (TreeNode 2 NilNode NilNode)) (TreeNode 7 (TreeNode 3 NilNode NilNode) NilNode))