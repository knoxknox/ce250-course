# 03
class Container < AbstractObject
  include ::Enumerable
  attr_reader :count

  def initialize
    super
    @count = 0
  end

  def purge
    @count = 0
  end

  def empty?
    count == 0
  end

  def full?
    false
  end

end

# 05
class Container < AbstractObject
  abstractmethod :iter

  def each
    i = iter
    while i.more?
      yield i.succ
    end
  end

end

# 06
class Container < AbstractObject

  def to_s
    s = ""
    each do |obj|
      s << ", " if not s.empty?
      s << obj.to_s
    end
    type.name + "{" + s + "}"
  end

end

# 08
class Container < AbstractObject

  def accept(visitor)
    assert { visitor.is_a?(Visitor) }
    each do |obj|
      break if visitor.done?
      visitor.visit(obj)
    end
  end

end
