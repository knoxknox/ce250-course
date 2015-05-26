class BinomialQueue < MergeablePriorityQueue

    def addTree(tree)
        @treeList.append(tree)
        @count += tree.count
    end

    def removeTree(tree)
        @treeList.extract(tree)
        @count -= tree.count
    end

end
