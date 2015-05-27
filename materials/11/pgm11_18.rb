class BinomialQueue < MergeablePriorityQueue

  def fullAdder(a, b, c)
    if a.nil?
      if b.nil?
        if c.nil?
          return [nil, nil]
        else
          return [c, nil]
        end
      else
        if c.nil?
          return [b, nil]
        else
          return [nil, b.add!(c)]
        end
      end
    else
      if b.nil?
        if c.nil?
          return [a, nil]
        else
          return [nil, a.add!(c)]
        end
      else
        if c.nil?
          return [nil, a.add!(b)]
        else
          return [c, a.add!(b)]
        end
      end
    end
  end

end
