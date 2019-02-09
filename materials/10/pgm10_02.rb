# 02
class BinarySearchTree < BinaryTree

  include SearchTreeMethods

  def initialize(*args)
    super
  end

end

# 03
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

# 04
class BinarySearchTree < BinaryTree

  def insert(obj)
    if empty?
      attachKey(obj)
    else
      diff = obj <=> @key
      if diff == 0
        raise ArgumentError
      elsif diff < 0
        @left.insert(obj)
      elsif diff > 0
        @right.insert(obj)
      end
    end
    balance
  end

  def attachKey(obj)
    raise StateError if not empty?
    @key = obj
    @left = BinarySearchTree.new
    @right = BinarySearchTree.new
  end

  def balance
  end

end

# 05
class BinarySearchTree < BinaryTree

  def withdraw(obj)
    raise ArgumentError if empty?
    diff = obj <=> @key
    if diff == 0
      if not @left.empty?
        max = @left.max
        @key = max
        @left.withdraw(max)
      elsif not @right.empty?
        min = @right.min
        @key = min
        @right.withdraw(min)
      else
        detachKey
      end
    elsif diff < 0
      @left.withdraw(obj)
    elsif diff > 0
      @right.withdraw(obj)
    end
    balance
  end

end
