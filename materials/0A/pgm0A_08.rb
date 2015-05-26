class Parent < Person

  def initialize(name, sex, children)
    super(name, sex)
    @children = children
  end

  def child(i)
    @children[i]
  end

  def to_s
    # ...
  end

end
