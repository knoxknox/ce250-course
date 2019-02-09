# 03
class PrePostVisitor < Visitor
  abstractmethod :preVisit
  abstractmethod :inVisit
  abstractmethod :postVisit
  alias_method :visit, :inVisit
end

# 04
class PreOrder < PrePostVisitor
  def initialize(visitor)
    super()
    @visitor = visitor
  end

  def preVisit(obj)
    @visitor.visit(obj)
  end

  def inVisit(obj)
  end

  def postVisit(obj)
  end

  def done?
    @visitor.done?
  end
end

# 05
class InOrder < PrePostVisitor
  def initialize(visitor)
    super()
    @visitor = visitor
  end

  def preVisit(obj)
  end

  def inVisit(obj)
    @visitor.visit(obj)
  end

  def postVisit(obj)
  end

  def done?
    @visitor.done?
  end
end

# 06
class PostOrder < PrePostVisitor
  def initialize(visitor)
    super()
    @visitor = visitor
  end

  def preVisit(obj)
  end

  def inVisit(obj)
  end

  def postVisit(obj)
    @visitor.visit(obj)
  end

  def done?
    @visitor.done?
  end
end
