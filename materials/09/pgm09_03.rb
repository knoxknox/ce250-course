class PrePostVisitor < Visitor

  abstractmethod :preVisit

  abstractmethod :inVisit

  abstractmethod :postVisit

  alias_method :visit, :inVisit

end
