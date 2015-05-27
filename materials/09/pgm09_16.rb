class BinaryTree < Tree

  def left
    raise StateError if empty?
    @left
  end

  def right
    raise StateError if empty?
    @right
  end

end
