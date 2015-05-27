class Tree < Container

  class Iterator < Opus8::Iterator

    def initialize(tree)
      @stack = StackAsLinkedList.new
      @stack.push(tree) if not tree.empty?
    end

    def more?
      not @stack.empty?
    end

    def succ
      if more?
        top = @stack.pop
        i = top.degree - 1
        while i >= 0
          subtree = top.getSubtree(i)
          @stack.push(subtree) if not subtree.empty?
          i -= 1
        end
        result = top.key
      else
        result = nil
      end
      return result
    end

  end

  def iter
    Iterator.new(self)
  end

end
