class Edge < AbstractObject

  def initialize
    super
  end

  abstractmethod :v0

  abstractmethod :v1

  abstractmethod :weight

  abstractmethod :isdirected?

  abstractmethod :mateOf

end
