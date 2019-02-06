# 10
class LinkedList
  class Element
    attr_accessor :succ
    attr_accessor :datum

    def initialize(list, datum, succ)
      @list = list
      @datum = datum
      @succ = succ
    end

  end
end

# 11
class LinkedList

  def initialize
    @head = nil
    @tail = nil
  end

end

# 12
class LinkedList

  def purge
    @head = nil
    @tail = nil
  end

end

# 13
class LinkedList
  attr_accessor :head
  attr_accessor :tail

  def empty?
    @head.nil?
  end

end

# 14
class LinkedList

  def first
    raise ContainerEmpty if @head.nil?
    @head.datum
  end

  def last
    raise ContainerEmpty if @tail.nil?
    @tail.datum
  end

end

# 15
class LinkedList

  def prepend(item)
    tmp = Element.new(self, item, @head)
    @tail = tmp if @head.nil?
    @head = tmp
  end

end

# 16
class LinkedList

  def append(item)
    tmp = Element.new(self, item, nil)
    if @head.nil?
      @head = tmp
    else
      @tail.succ = tmp
    end
    @tail = tmp
  end

end

# 17
class LinkedList

  def clone
    result = LinkedList.new
    ptr = @head
    while not ptr.nil?
      result.append(ptr.datum)
      ptr = ptr.succ
    end
    result
  end

end

# 18
class LinkedList

  def extract(item)
    ptr = @head
    prevPtr = nil
    while not ptr.nil? and not ptr.datum.equal?(item)
      prevPtr = ptr
      ptr = ptr.succ
    end

    raise ArgumentError if ptr.nil?

    if ptr == @head
      @head = ptr.succ
    else
      prevPtr.succ = ptr.succ
    end

    if ptr == @tail
      @tail = prevPtr
    end
  end

end

# 19
class LinkedList
  class Element

    def insertAfter(item)
      @succ = Element.new(@list, item, @succ)
      if @list.tail.equal?(self)
        @list.tail = @succ
      end
    end

    def insertBefore(item)
      tmp = Element.new(@list, item, self)
      if @list.head.equal?(self)
        @list.head = tmp
      else
        prevPtr = @list.head
        while not prevPtr.nil? and not prevPtr.succ.equal?(self)
          prevPtr = prevPtr.succ
        end
        prevPtr.succ = tmp
      end
    end

  end
end

# 06:09
class LinkedList

  def each
    ptr = @head
    while not ptr.nil?
      yield ptr.datum
      ptr = ptr.succ
    end
  end

end
