class BinarySearchTree < BinaryTree

  def find(obj)
    return nil if empty?
    diff = obj <=> @key
    if diff == 0
      return @key
    elsif diff < 0
      return @left.find(obj)
    elsif diff > 0
      return @right.find(obj)
    end
  end

  def min
    if empty?
      return nil
    elsif @left.empty?
      return @key
    else
      return @left.min
    end
  end

end
