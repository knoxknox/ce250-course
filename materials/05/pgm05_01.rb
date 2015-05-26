class AbstractObject < ::Object
  include ::Comparable

  def initialize
    super
  end

  def <=>(obj)
    if is_a?(obj.type)
      return compareTo(obj)
    elsif obj.is_a?(type)
      return -obj.compareTo(self)
    else
      return type.name <=> obj.type.name
    end
  end

  abstractmethod :compareTo
  protected :compareTo

end
