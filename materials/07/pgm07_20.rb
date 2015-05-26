class Polynomial < Container

    def initialize
	super
    end

    abstractmethod :addTerm

    abstractmethod :differentiate!

    abstractmethod :+

end
