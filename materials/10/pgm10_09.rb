class AVLTree < BinarySearchTree

    def doLRRotation
	raise StateError if empty?
        @left.doRRRotation
        doLLRotation
    end

end
