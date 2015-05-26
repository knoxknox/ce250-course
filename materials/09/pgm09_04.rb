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
