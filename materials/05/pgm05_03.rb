class Container < AbstractObject
  include ::Enumerable
  attr_reader :count

  def initialize
    super
    @count = 0
  end

  def purge
    @count = 0
  end

  def empty?
    count == 0
  end

  def full?
    false
  end

end
