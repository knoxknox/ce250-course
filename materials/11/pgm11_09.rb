class LeftistHeap < BinaryTree

  def enqueue(obj)
    merge!(LeftistHeap.new(obj))
  end

end
