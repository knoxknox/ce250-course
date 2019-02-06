# 08
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

# 09
class DenseMatrix < Matrix

  def *(mat)
    assert { numberOfColumns == mat.numberOfRows }
    result = DenseMatrix.new(numberOfRows, mat.numberOfColumns)

    for i in 0 ... numberOfRows
      for j in 0 ... mat.numberOfColumns
        sum = 0
        for k in 0 ... numberOfColumns
          sum += self[i,k] * mat[k,j]
        end
        result[i,j] = sum
      end
    end
    return result
  end

end
