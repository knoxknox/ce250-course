class Partition < Set

  def initialize(n)
    super
  end

  abstractmethod :find

  abstractmethod :join

end
