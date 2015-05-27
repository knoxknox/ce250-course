class Graph < Container

  abstractmethod :directed?
  abstractmethod :connected?
  abstractmethod :cyclic?
  abstractmethod :vertices
  abstractmethod :edges
  abstractmethod :addVertex
  abstractmethod :getVertex
  abstractmethod :addEdge
  abstractmethod :getEdge
  abstractmethod :edge?
  abstractmethod :depthFirstTraversal
  abstractmethod :breadthFirstTraversal
  abstractmethod :incidentEdges
  abstractmethod :emanatingEdges

end
