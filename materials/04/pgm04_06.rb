class MultiDimensionalArray

  def getOffset(indices)
    raise IndexError if indices.length != @dimensions.length
    offset = 0
    for i in 0 ... @dimensions.length
      if indices[i] < 0 or indices[i] >= @dimensions[i]
        raise IndexError
      end
      offset += @factors[i] * indices[i]
    end
    return offset
  end

  def [](*indices)
    @data[self.getOffset(indices)]
  end

  def []=(*indicesAndValue)
    value = indicesAndValue.pop
    @data[self.getOffset(indicesAndValue)] = value
  end

end
