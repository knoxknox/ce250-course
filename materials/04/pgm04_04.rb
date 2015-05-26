class Array

  def length=(value)
    tmp = Array.new(value, nil)
    for i in 0 ... [length, value].min
      tmp.setitem(i, getitem(i))
    end

    clear
    setitem(value - 1, nil) if value > 0
    for i in 0 ... tmp.length
      setitem(i, tmp.getitem(i))
    end
  end

end
