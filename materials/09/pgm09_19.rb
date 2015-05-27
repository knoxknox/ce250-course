class ExpressionTree < BinaryTree

  def initialize(word)
    super
  end

  def ExpressionTree.parsePostfix(input)
    stack = StackAsLinkedList.new
    for line in input.readlines
      for word in line.split
        if word == "+" or word == "-" or word == "*" or word == "/"
          result = ExpressionTree.new(word)
          result.attachRight(stack.pop)
          result.attachLeft(stack.pop)
          stack.push(result)
        else
          stack.push(ExpressionTree.new(word))
        end
      end
    end
    return stack.pop
  end

end
