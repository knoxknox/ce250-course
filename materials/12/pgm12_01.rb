class Set < SearchableContainer

  def initialize(universeSize)
    super()
    @universeSize = universeSize
  end

  attr_reader :universeSize

  abstractmethod :|

  abstractmethod :&

  abstractmethod :-

  abstractmethod :==

  abstractmethod :<=

  def find(i)
    member?(i) ? i : nil
  end

end
