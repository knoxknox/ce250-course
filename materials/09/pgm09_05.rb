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
