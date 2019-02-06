# 07
class Matrix
  attr_reader :numberOfRows
  attr_reader :numberOfColumns

  abstractmethod :+
  abstractmethod :*
  abstractmethod :transpose

  def initialize(numberOfRows, numberOfColumns)
    assert { numberOfRows >= 0 && numberOfColumns >= 0 }
    @numberOfRows, @numberOfColumns = numberOfRows, numberOfColumns
  end

end
