class BTree < MWayTree

  def initialize(m)
    super
    @parent = nil
  end

  def attachSubtree(i, t)
    @subtree[i] = t
    t.parent = self
  end

  attr_accessor :parent

end
