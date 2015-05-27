class GeneralTree < Tree

  def initialize(key)
    super()
    @key = key
    @degree = 0
    @list = LinkedList.new
  end

  def purge
    @list.purge
    @degree = 0
  end

end
