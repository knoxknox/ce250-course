class MultisetAsArray < Multiset

  def initialize(n)
    super
    @array = Array.new(@universeSize)
    for item in 0 ... @universeSize
      @array[item] = 0
    end
  end

  attr_accessor :array
  public :array
  protected :array=

end
