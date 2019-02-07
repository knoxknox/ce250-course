# 06
class HashTable < SearchableContainer

  def initialize
    super
  end

  abstractmethod :length

  def loadFactor
    return count / length
  end

end

# 07
class HashTable < SearchableContainer

  def f(obj)
    obj.hash
  end

  def g(x)
    x.abs % length
  end

  def h(obj)
    g(f(obj))
  end

end
