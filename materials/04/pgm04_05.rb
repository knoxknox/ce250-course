class MultiDimensionalArray

  def initialize(*dimensions)
    @factors = Array.new(dimensions.length)
    @dimensions = Array.new(dimensions.length)

    product = 1
    i = dimensions.length - 1
    while i >= 0
      @factors[i] = product
      @dimensions[i] = dimensions[i]
      product *= @dimensions[i]
      i -= 1
    end

    @data = Array.new(product)
  end

end
