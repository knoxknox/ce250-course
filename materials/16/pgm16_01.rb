class Vertex < AbstractObject

  def initialize
    super
  end

  abstractmethod :number

  abstractmethod :weight

  abstractmethod :incidentEdges

  abstractmethod :emanatingEdges

  abstractmethod :predecessors

  abstractmethod :successors

end
