# 11
class OrderedListAsLinkedList < OrderedList

  def initialize
    super
    @linkedList = LinkedList.new
  end

  attr_reader :linkedList

  attr_accessor :count

end

# 12
class OrderedListAsLinkedList < OrderedList

  def insert(obj)
    @linkedList.append(obj)
    @count += 1
  end

  def [](offset)
    raise IndexError if not (0 ... @count) === offset
    ptr = @linkedList.head
    i = 0
    while i < offset and not ptr.nil?
      ptr = ptr.succ
      i += 1
    end
    ptr.datum
  end

end

# 13
class OrderedListAsLinkedList < OrderedList

  def member?(obj)
    ptr = @linkedList.head
    while not ptr.nil?
      return true if ptr.datum.equal?(obj)
      ptr = ptr.succ
    end
    false
  end

  def find(arg)
    ptr = @linkedList.head
    while not ptr.nil?
      return ptr.datum if ptr.datum == arg
      ptr = ptr.succ
    end
    nil
  end

end

# 14
class OrderedListAsLinkedList < OrderedList

  def withdraw(obj)
    raise ContainerEmpty if @count == 0
    @linkedList.extract(obj)
    @count -= 1
  end

end

# 15
class OrderedListAsLinkedList < OrderedList

  class Cursor

    def initialize(list, element)
      @list = list
      @element = element
    end

    def datum
      @element.datum
    end

  end

end

# 16
class OrderedListAsLinkedList < OrderedList

  def findPosition(obj)
    ptr = @linkedList.head
    while not ptr.nil?
      break if ptr.datum == obj
      ptr = ptr.succ
    end
    Cursor.new(self, ptr)
  end

end

# 17
class OrderedListAsLinkedList < OrderedList

  class Cursor < Cursor

    def insertAfter(obj)
      @element.insertAfter(obj)
      @list.count += 1
    end

  end

end

# 18
class OrderedListAsLinkedList < OrderedList

  class Cursor

    def withdraw
      @list.linkedList.extract(@element.datum)
      @list.count -= 1
    end

  end

end
