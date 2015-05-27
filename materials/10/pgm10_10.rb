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
