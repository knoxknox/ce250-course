class Stack < Container

    def initialize
	super
    end

    abstractmethod :push

    abstractmethod :pop

    abstractmethod :top

end
