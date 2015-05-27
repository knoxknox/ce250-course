class Tree < Container

  def initialize
    super
  end

  abstractmethod :key

  abstractmethod :getSubtree

  abstractmethod :empty?

  abstractmethod :leaf?

  abstractmethod :degree

  abstractmethod :height

end
