class MultisetAsLinkedList < Multiset

  def initialize(n)
    super
    @list = LinkedList.new
  end

  attr_accessor :list
  public :list
  protected :list=

end
