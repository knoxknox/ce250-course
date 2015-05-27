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
