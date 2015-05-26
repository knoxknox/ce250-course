class AVLTree < BinarySearchTree

    def initialize
	super
        @height = -1
    end

    attr_accessor :key

    attr_accessor :left

    attr_accessor :right

end
