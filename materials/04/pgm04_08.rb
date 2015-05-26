class DenseMatrix < Matrix

  def initialize(rows, cols)
    super
    @array = MultiDimensionalArray.new(rows, cols)
  end

  def [](i, j)
    @array[i,j]
  end

  def []=(i, j, value)
    @array[i,j] = value
  end

end
