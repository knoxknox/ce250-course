# 06
class StackAsLinkedList < Stack

  def initialize
    super
    @list = LinkedList.new
  end

  def purge
    @list.purge
    super
  end

end

# 07
class StackAsLinkedList < Stack

  def push(obj)
    @list.prepend(obj)
    @count += 1
  end

  def pop
    raise ContainerEmpty if @count == 0
    result = @list.first
    @list.extract(result)
    @count -= 1
    return result
  end

  def top
    raise ContainerEmpty if @count == 0
    return @list.first
  end

end

# 08
class StackAsLinkedList < Stack

  def each(&block)
    @list.each(&block)
  end

end

# 10
class StackAsLinkedList < Stack

  attr_reader :list

  class Iterator < Opus8::Iterator

    def initialize(stack)
      @position = stack.list.head
    end

    def more?
      not @position.nil?
    end

    def succ
      if more?
        result = @position.datum
        @position = @position.succ
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
