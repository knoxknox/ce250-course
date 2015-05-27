class ExpressionTree < BinaryTree

  def to_s
    s = ""
    depthFirstTraversal do |obj, mode|
      case mode
      when Tree::PREVISIT
        s << "("
      when Tree::INVISIT
        s << obj.to_s
      when Tree::POSTVISIT
        s << ")"
      end
    end
    s
  end

end
