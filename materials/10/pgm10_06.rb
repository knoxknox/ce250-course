# 06
class AVLTree < BinarySearchTree

  def initialize
    super
    @height = -1
  end

  attr_accessor :key

  attr_accessor :left

  attr_accessor :right

end

# 07
class AVLTree < BinarySearchTree

  attr_reader :height

  def adjustHeight
    if empty?
      @height = -1
    else
      @height = [@left.height, @right.height].max + 1
    end
  end

  def balanceFactor
    if empty?
      return 0
    else
      return @left.height - @right.height
    end
  end

end

# 08
class AVLTree < BinarySearchTree

  def doLLRotation
    raise StateError if empty?
    tmp = @right
    @right = @left
    @left = @right.left
    @right.left = @right.right
    @right.right = tmp

    tmp = @key
    @key = @right.key
    @right.key = tmp

    @right.adjustHeight
    adjustHeight
  end

end

# 09
class AVLTree < BinarySearchTree

  def doLRRotation
    raise StateError if empty?
    @left.doRRRotation
    doLLRotation
  end

end

# 10
class AVLTree < BinarySearchTree

  def balance
    adjustHeight
    if balanceFactor > 1
      if @left.balanceFactor > 0
        doLLRotation
      else
        doLRRotation
      end
    elsif balanceFactor < -1
      if @right.balanceFactor < 0
        doRRRotation
      else
        doRLRotation
      end
    end
  end

end

# 11
class AVLTree < BinarySearchTree

  def attachKey(obj)
    raise StateError if not empty?
    @key = obj
    @left = AVLTree.new
    @right = AVLTree.new
    @height = 0
  end

end

# 12
class AVLTree < BinarySearchTree

  def detachKey
    super
    @height = -1
  end

end
