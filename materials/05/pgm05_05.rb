class Container < AbstractObject
  abstractmethod :iter

  def each
    i = iter
    while i.more?
      yield i.succ
    end
  end

end
