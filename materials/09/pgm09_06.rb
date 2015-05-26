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
