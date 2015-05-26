module SearchTreeMethods

    abstractmethod :min

    abstractmethod :max

end

class SearchTree < Tree

    def initialize
	super
    end

    include SearchableContainerMethods
    include SearchTreeMethods

end
