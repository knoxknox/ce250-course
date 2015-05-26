class HashTable < SearchableContainer

    def initialize
	super
    end

    abstractmethod :length

    def loadFactor
        return count / length
    end

end
