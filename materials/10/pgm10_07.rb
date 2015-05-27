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
