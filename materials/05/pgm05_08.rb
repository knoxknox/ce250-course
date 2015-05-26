class Container < AbstractObject

  def accept(visitor)
    assert { visitor.is_a?(Visitor) }
    each do |obj|
      break if visitor.done?
      visitor.visit(obj)
    end
  end

end
