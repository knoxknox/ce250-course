class QuickSorter < Sorter

  def initialize
    super
  end

  abstractmethod :selectPivot
end
