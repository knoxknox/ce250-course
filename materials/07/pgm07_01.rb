class OrderedList < SearchableContainer

  def initialize
    super
  end

  abstractmethod :[]

  abstractmethod :findPosition

end
