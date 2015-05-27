module DigraphMethods

  def cyclic?
    count = 0
    topologicalOrderTraversal { |obj| count += 1 }
    count != numberOfVertices
  end

end
