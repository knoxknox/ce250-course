class Array
  alias_method :init, :initialize

  def initialize(size = 0, baseIndex = 0)
    init(size, nil)
    @baseIndex = baseIndex
  end

end
