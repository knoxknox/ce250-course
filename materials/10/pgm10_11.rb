class AVLTree < BinarySearchTree

  def attachKey(obj)
    raise StateError if not empty?
    @key = obj
    @left = AVLTree.new
    @right = AVLTree.new
    @height = 0
  end

end
