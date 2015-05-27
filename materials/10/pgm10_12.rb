class AVLTree < BinarySearchTree

  def detachKey
    super
    @height = -1
  end

end
