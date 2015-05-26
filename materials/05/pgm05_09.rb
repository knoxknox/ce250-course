module SearchableContainerMethods
  abstractmethod :find
  abstractmethod :insert
  abstractmethod :member?
  abstractmethod :withdraw
end

class SearchableContainer < Container
  include SearchableContainerMethods
end
